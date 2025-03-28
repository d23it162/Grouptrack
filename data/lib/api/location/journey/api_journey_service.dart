import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

import '../../../log/logger.dart';
import '../../network/client.dart';
import 'journey.dart';

final journeyServiceProvider = Provider((ref) => ApiJourneyService(
      ref.read(firestoreProvider),
    ));

class ApiJourneyService {
  late FirebaseFirestore _db;

  ApiJourneyService(FirebaseFirestore fireStore) {
    _db = fireStore;
  }

  CollectionReference get _userRef => _db.collection("users");

  CollectionReference<ApiLocationJourney> _journeyRef(String userId) => _userRef
      .doc(userId)
      .collection("user_journeys")
      .withConverter<ApiLocationJourney>(
        fromFirestore: (snapshot, _) =>
            ApiLocationJourney.fromFireStore(snapshot, null),
        toFirestore: (journey, _) => journey.toJson(),
      );

  Future<ApiLocationJourney> addJourney({
    required String userId,
    required ApiLocationJourney newJourney,
  }) async {
    final docRef = _journeyRef(userId).doc();

    final journey = newJourney.copyWith(id: newJourney.id ?? docRef.id);
    await docRef.set(journey);
    return journey;
  }

  Future<void> updateJourney(
    String userId,
    ApiLocationJourney journey,
  ) async {
    try {
      await _journeyRef(userId).doc(journey.id).set(journey);
    } catch (error) {
      logger.e(
        'ApiJourneyService: Error while updating last location journey',
        error: error,
      );
    }
  }

  Future<ApiLocationJourney?> getLastJourneyLocation(String userId) async {
    final querySnapshot = await _journeyRef(userId)
        .where('user_id', isEqualTo: userId)
        .orderBy('created_at', descending: true)
        .limit(1)
        .get();

    final doc = querySnapshot.docs.firstOrNull;
    if (doc != null) {
      return doc.data();
    }
    return null;
  }

  Future<List<ApiLocationJourney>> getJourneyHistory(
    String userId,
    int from,
    int to,
  ) async {
    final createdQuerySnapshot = await _journeyRef(userId)
        .where('user_id', isEqualTo: userId)
        .where('created_at', isGreaterThanOrEqualTo: from)
        .where('created_at', isLessThanOrEqualTo: to)
        .orderBy('created_at', descending: true)
        .limit(20)
        .get();

    final updatedQuerySnapshot = await _journeyRef(userId)
        .where('user_id', isEqualTo: userId)
        .where('update_at', isGreaterThanOrEqualTo: from)
        .where('update_at', isLessThanOrEqualTo: to)
        .orderBy('created_at', descending: true)
        .limit(1)
        .get();

    final allDocsMap = <String, ApiLocationJourney>{};

    for (var doc in createdQuerySnapshot.docs) {
      allDocsMap[doc.id] = doc.data();
    }

    for (var doc in updatedQuerySnapshot.docs) {
      allDocsMap[doc.id] = doc.data();
    }

    return allDocsMap.values.toList();
  }

  Future<List<ApiLocationJourney>> getMoreJourneyHistory(
    String userId,
    int? from,
  ) async {
    if (from == null) {
      final querySnapshot = await _journeyRef(userId)
          .where('user_id', isEqualTo: userId)
          .orderBy('created_at', descending: true)
          .limit(20)
          .get();
      return querySnapshot.docs.map((doc) => doc.data()).toList();
    }
    final querySnapshot = await _journeyRef(userId)
        .where('user_id', isEqualTo: userId)
        .where('created_at', isLessThan: from)
        .orderBy('created_at', descending: true)
        .limit(20)
        .get();
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<ApiLocationJourney?> getUserJourneyById(
    String journeyId,
    String userId,
  ) async {
    final querySnapshot = await _journeyRef(userId).doc(journeyId).get();

    if (querySnapshot.exists) {
      return querySnapshot.data();
    }
    return null;
  }

  Future<void> uploadLogFileToFirebase() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final logFile = File('${directory.path}/app.log');
      final storage = FirebaseStorage.instance;
      final fileName = 'LOG_${DateTime.now().millisecondsSinceEpoch}.log';
      final logFileRef = storage.ref().child('logs/$fileName');
      await logFileRef.putFile(logFile);
    } catch (e) {
      logger.e('Error uploading log file: $e');
    }
  }
}
