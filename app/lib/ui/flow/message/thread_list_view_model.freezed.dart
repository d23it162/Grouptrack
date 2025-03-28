// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'thread_list_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThreadListViewState {
  bool get loading => throw _privateConstructorUsedError;
  bool get fetchingInviteCode => throw _privateConstructorUsedError;
  bool get deleting => throw _privateConstructorUsedError;
  bool get isNetworkOff => throw _privateConstructorUsedError;
  SpaceInfo? get space => throw _privateConstructorUsedError;
  String get spaceInvitationCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ApiThread> get threads => throw _privateConstructorUsedError;
  Map<String, ApiUser> get users => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThreadListViewStateCopyWith<ThreadListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThreadListViewStateCopyWith<$Res> {
  factory $ThreadListViewStateCopyWith(
          ThreadListViewState value, $Res Function(ThreadListViewState) then) =
      _$ThreadListViewStateCopyWithImpl<$Res, ThreadListViewState>;
  @useResult
  $Res call(
      {bool loading,
      bool fetchingInviteCode,
      bool deleting,
      bool isNetworkOff,
      SpaceInfo? space,
      String spaceInvitationCode,
      String message,
      List<ApiThread> threads,
      Map<String, ApiUser> users,
      Object? error});

  $SpaceInfoCopyWith<$Res>? get space;
}

/// @nodoc
class _$ThreadListViewStateCopyWithImpl<$Res, $Val extends ThreadListViewState>
    implements $ThreadListViewStateCopyWith<$Res> {
  _$ThreadListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? fetchingInviteCode = null,
    Object? deleting = null,
    Object? isNetworkOff = null,
    Object? space = freezed,
    Object? spaceInvitationCode = null,
    Object? message = null,
    Object? threads = null,
    Object? users = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingInviteCode: null == fetchingInviteCode
          ? _value.fetchingInviteCode
          : fetchingInviteCode // ignore: cast_nullable_to_non_nullable
              as bool,
      deleting: null == deleting
          ? _value.deleting
          : deleting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkOff: null == isNetworkOff
          ? _value.isNetworkOff
          : isNetworkOff // ignore: cast_nullable_to_non_nullable
              as bool,
      space: freezed == space
          ? _value.space
          : space // ignore: cast_nullable_to_non_nullable
              as SpaceInfo?,
      spaceInvitationCode: null == spaceInvitationCode
          ? _value.spaceInvitationCode
          : spaceInvitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      threads: null == threads
          ? _value.threads
          : threads // ignore: cast_nullable_to_non_nullable
              as List<ApiThread>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiUser>,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SpaceInfoCopyWith<$Res>? get space {
    if (_value.space == null) {
      return null;
    }

    return $SpaceInfoCopyWith<$Res>(_value.space!, (value) {
      return _then(_value.copyWith(space: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ThreadListViewStateImplCopyWith<$Res>
    implements $ThreadListViewStateCopyWith<$Res> {
  factory _$$ThreadListViewStateImplCopyWith(_$ThreadListViewStateImpl value,
          $Res Function(_$ThreadListViewStateImpl) then) =
      __$$ThreadListViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool fetchingInviteCode,
      bool deleting,
      bool isNetworkOff,
      SpaceInfo? space,
      String spaceInvitationCode,
      String message,
      List<ApiThread> threads,
      Map<String, ApiUser> users,
      Object? error});

  @override
  $SpaceInfoCopyWith<$Res>? get space;
}

/// @nodoc
class __$$ThreadListViewStateImplCopyWithImpl<$Res>
    extends _$ThreadListViewStateCopyWithImpl<$Res, _$ThreadListViewStateImpl>
    implements _$$ThreadListViewStateImplCopyWith<$Res> {
  __$$ThreadListViewStateImplCopyWithImpl(_$ThreadListViewStateImpl _value,
      $Res Function(_$ThreadListViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? fetchingInviteCode = null,
    Object? deleting = null,
    Object? isNetworkOff = null,
    Object? space = freezed,
    Object? spaceInvitationCode = null,
    Object? message = null,
    Object? threads = null,
    Object? users = null,
    Object? error = freezed,
  }) {
    return _then(_$ThreadListViewStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchingInviteCode: null == fetchingInviteCode
          ? _value.fetchingInviteCode
          : fetchingInviteCode // ignore: cast_nullable_to_non_nullable
              as bool,
      deleting: null == deleting
          ? _value.deleting
          : deleting // ignore: cast_nullable_to_non_nullable
              as bool,
      isNetworkOff: null == isNetworkOff
          ? _value.isNetworkOff
          : isNetworkOff // ignore: cast_nullable_to_non_nullable
              as bool,
      space: freezed == space
          ? _value.space
          : space // ignore: cast_nullable_to_non_nullable
              as SpaceInfo?,
      spaceInvitationCode: null == spaceInvitationCode
          ? _value.spaceInvitationCode
          : spaceInvitationCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      threads: null == threads
          ? _value._threads
          : threads // ignore: cast_nullable_to_non_nullable
              as List<ApiThread>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, ApiUser>,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ThreadListViewStateImpl implements _ThreadListViewState {
  const _$ThreadListViewStateImpl(
      {this.loading = false,
      this.fetchingInviteCode = false,
      this.deleting = false,
      this.isNetworkOff = false,
      this.space,
      this.spaceInvitationCode = '',
      this.message = '',
      final List<ApiThread> threads = const [],
      final Map<String, ApiUser> users = const {},
      this.error})
      : _threads = threads,
        _users = users;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool fetchingInviteCode;
  @override
  @JsonKey()
  final bool deleting;
  @override
  @JsonKey()
  final bool isNetworkOff;
  @override
  final SpaceInfo? space;
  @override
  @JsonKey()
  final String spaceInvitationCode;
  @override
  @JsonKey()
  final String message;
  final List<ApiThread> _threads;
  @override
  @JsonKey()
  List<ApiThread> get threads {
    if (_threads is EqualUnmodifiableListView) return _threads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_threads);
  }

  final Map<String, ApiUser> _users;
  @override
  @JsonKey()
  Map<String, ApiUser> get users {
    if (_users is EqualUnmodifiableMapView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'ThreadListViewState(loading: $loading, fetchingInviteCode: $fetchingInviteCode, deleting: $deleting, isNetworkOff: $isNetworkOff, space: $space, spaceInvitationCode: $spaceInvitationCode, message: $message, threads: $threads, users: $users, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThreadListViewStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.fetchingInviteCode, fetchingInviteCode) ||
                other.fetchingInviteCode == fetchingInviteCode) &&
            (identical(other.deleting, deleting) ||
                other.deleting == deleting) &&
            (identical(other.isNetworkOff, isNetworkOff) ||
                other.isNetworkOff == isNetworkOff) &&
            (identical(other.space, space) || other.space == space) &&
            (identical(other.spaceInvitationCode, spaceInvitationCode) ||
                other.spaceInvitationCode == spaceInvitationCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._threads, _threads) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      fetchingInviteCode,
      deleting,
      isNetworkOff,
      space,
      spaceInvitationCode,
      message,
      const DeepCollectionEquality().hash(_threads),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThreadListViewStateImplCopyWith<_$ThreadListViewStateImpl> get copyWith =>
      __$$ThreadListViewStateImplCopyWithImpl<_$ThreadListViewStateImpl>(
          this, _$identity);
}

abstract class _ThreadListViewState implements ThreadListViewState {
  const factory _ThreadListViewState(
      {final bool loading,
      final bool fetchingInviteCode,
      final bool deleting,
      final bool isNetworkOff,
      final SpaceInfo? space,
      final String spaceInvitationCode,
      final String message,
      final List<ApiThread> threads,
      final Map<String, ApiUser> users,
      final Object? error}) = _$ThreadListViewStateImpl;

  @override
  bool get loading;
  @override
  bool get fetchingInviteCode;
  @override
  bool get deleting;
  @override
  bool get isNetworkOff;
  @override
  SpaceInfo? get space;
  @override
  String get spaceInvitationCode;
  @override
  String get message;
  @override
  List<ApiThread> get threads;
  @override
  Map<String, ApiUser> get users;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$ThreadListViewStateImplCopyWith<_$ThreadListViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
