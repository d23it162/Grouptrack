//ignore_for_file: constant_identifier_names

import 'package:cloud_functions/cloud_functions.dart';
import 'package:data/log/logger.dart';
import 'package:data/service/space_service.dart';
import 'package:data/storage/app_preferences.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../api/auth/auth_models.dart';
import '../service/place_service.dart';

const GEOFENCE_ENTER = 1;
const GEOFENCE_EXIT = 2;

final geofenceRepositoryProvider = Provider((ref) => GeofenceRepository(
      ref.read(placeServiceProvider),
      ref.read(spaceServiceProvider),
      ref.read(currentUserPod),
    ));

class GeofenceRepository {
  final PlaceService placeService;
  final SpaceService spaceService;
  final ApiUser? _currentUser;

  GeofenceRepository(this.placeService, this.spaceService, this._currentUser);

  void makeHttpCall(String placeId, int status) async {
    try {
      final place = await placeService.getPlace(placeId);
      if (place != null) {
        final message = status == GEOFENCE_ENTER
            ? '${_currentUser?.first_name ?? ''} has arrived at 📍${place.name}'
            : '${_currentUser?.first_name ?? ''} has left 📍${place.name}';

        final data = {
          'placeId': placeId,
          'spaceId': place.space_id,
          'eventBy': _currentUser?.id ?? '',
          'message': message,
          'eventType': status == GEOFENCE_ENTER ? "1" : "2",
        };

        final callable = FirebaseFunctions.instanceFor(region: 'asia-south1')
            .httpsCallable('sendGeoFenceNotification');
        await callable.call(data);
      }
    } catch (error, stack) {
      logger.e(
        "GeofenceService: error while getting place from place id",
        error: error,
        stackTrace: stack,
      );
    }
  }
}
