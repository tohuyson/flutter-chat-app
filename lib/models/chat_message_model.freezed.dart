// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessageEntity _$ChatMessageEntityFromJson(Map<String, dynamic> json) {
  return _ChatMessageEntity.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageEntity {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_id')
  int get chatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  UserEntity get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageEntityCopyWith<ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageEntityCopyWith<$Res> {
  factory $ChatMessageEntityCopyWith(
          ChatMessageEntity value, $Res Function(ChatMessageEntity) then) =
      _$ChatMessageEntityCopyWithImpl<$Res, ChatMessageEntity>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'user_id') int userId,
      String message,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      UserEntity user});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$ChatMessageEntityCopyWithImpl<$Res, $Val extends ChatMessageEntity>
    implements $ChatMessageEntityCopyWith<$Res> {
  _$ChatMessageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatMessageEntityCopyWith<$Res>
    implements $ChatMessageEntityCopyWith<$Res> {
  factory _$$_ChatMessageEntityCopyWith(_$_ChatMessageEntity value,
          $Res Function(_$_ChatMessageEntity) then) =
      __$$_ChatMessageEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'chat_id') int chatId,
      @JsonKey(name: 'user_id') int userId,
      String message,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      UserEntity user});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ChatMessageEntityCopyWithImpl<$Res>
    extends _$ChatMessageEntityCopyWithImpl<$Res, _$_ChatMessageEntity>
    implements _$$_ChatMessageEntityCopyWith<$Res> {
  __$$_ChatMessageEntityCopyWithImpl(
      _$_ChatMessageEntity _value, $Res Function(_$_ChatMessageEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatId = null,
    Object? userId = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = null,
  }) {
    return _then(_$_ChatMessageEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMessageEntity implements _ChatMessageEntity {
  _$_ChatMessageEntity(
      {required this.id,
      @JsonKey(name: 'chat_id') required this.chatId,
      @JsonKey(name: 'user_id') required this.userId,
      required this.message,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.user});

  factory _$_ChatMessageEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageEntityFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'chat_id')
  final int chatId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  final String message;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final UserEntity user;

  @override
  String toString() {
    return 'ChatMessageEntity(id: $id, chatId: $chatId, userId: $userId, message: $message, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessageEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, chatId, userId, message, createdAt, updatedAt, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMessageEntityCopyWith<_$_ChatMessageEntity> get copyWith =>
      __$$_ChatMessageEntityCopyWithImpl<_$_ChatMessageEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageEntityToJson(
      this,
    );
  }
}

abstract class _ChatMessageEntity implements ChatMessageEntity {
  factory _ChatMessageEntity(
      {required final int id,
      @JsonKey(name: 'chat_id') required final int chatId,
      @JsonKey(name: 'user_id') required final int userId,
      required final String message,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final UserEntity user}) = _$_ChatMessageEntity;

  factory _ChatMessageEntity.fromJson(Map<String, dynamic> json) =
      _$_ChatMessageEntity.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'chat_id')
  int get chatId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  String get message;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  UserEntity get user;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageEntityCopyWith<_$_ChatMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
