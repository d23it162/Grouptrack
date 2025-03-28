// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data/api/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';

part 'auth_models.g.dart';

const LOGIN_TYPE_GOOGLE = 1;
const LOGIN_TYPE_APPLE = 2;
const USER_STATE_ONLINE = 0;
const USER_STATE_NO_NETWORK_OR_PHONE_OFF = 1;
const USER_STATE_LOCATION_PERMISSION_DENIED = 2;

@freezed
class ApiUser with _$ApiUser {
  const ApiUser._();

  const factory ApiUser({
    required String id,
    String? first_name,
    String? last_name,
    String? email,
    String? provider_firebase_id_token,
    required int auth_type,
    String? profile_image,
    @Default(true) bool? location_enabled,
    @Default([]) List<String>? space_ids,
    int? battery_pct,
    @Default("") String? fcm_token,
    int? state,
    int? created_at,
    int? updated_at,
  }) = _ApiUser;

  factory ApiUser.fromJson(Map<String, dynamic> json) =>
      _$ApiUserFromJson(json);

  factory ApiUser.fromFireStore(DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    Map<String, dynamic>? data = snapshot.data();
    return ApiUser.fromJson(data!);
  }

  String toJsonString() => jsonEncode(toJson());

  Map<String, dynamic> toFireStore(ApiUser instance) => instance.toJson();

  String get fullName {
    return '$first_name $last_name';
  }

  String get firstChar {
    return (first_name?.isNotEmpty ?? false)
        ? first_name![0].toUpperCase()
        : '';
  }

  bool get noNetWork {
    return state == USER_STATE_NO_NETWORK_OR_PHONE_OFF;
  }

  bool get locationPermissionDenied {
    return state == USER_STATE_LOCATION_PERMISSION_DENIED;
  }
}

@freezed
class ApiSession with _$ApiSession {
  const ApiSession._();

  const factory ApiSession(
      {required String id,
      required String user_id,
      @Default(1) int? platform,
      required bool session_active,
      String? device_name,
      String? device_id,
      int? created_at,
      int? app_version}) = _ApiSession;

  factory ApiSession.fromJson(Map<String, dynamic> json) =>
      _$ApiSessionFromJson(json);

  factory ApiSession.fromFireStore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    Map<String, dynamic>? data = snapshot.data();
    return ApiSession.fromJson(data!);
  }

  String toJsonString() => jsonEncode(toJson());

  Map<String, dynamic> toFireStore(ApiSession instance) => instance.toJson();
}

@freezed
class ApiUserInfo with _$ApiUserInfo {
  const ApiUserInfo._();

  const factory ApiUserInfo({
    required ApiUser user,
    ApiLocation? location,
    required bool isLocationEnabled,
    ApiSession? session,
  }) = _ApiUserInfo;

  factory ApiUserInfo.fromJson(Map<String, dynamic> json) =>
      _$ApiUserInfoFromJson(json);

  factory ApiUserInfo.fromFireStore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    Map<String, dynamic>? data = snapshot.data();
    return ApiUserInfo.fromJson(data!);
  }

  String toJsonString() => jsonEncode(toJson());

  Map<String, dynamic> toFireStore(ApiUserInfo instance) => instance.toJson();
}
