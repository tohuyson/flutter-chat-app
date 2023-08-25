// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_chat_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateChatMessageRequest _$CreateChatMessageRequestFromJson(
    Map<String, dynamic> json) {
  return _CreateChatMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateChatMessageRequest {
  @JsonKey(name: "chat_id")
  int get chatId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateChatMessageRequestCopyWith<CreateChatMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChatMessageRequestCopyWith<$Res> {
  factory $CreateChatMessageRequestCopyWith(CreateChatMessageRequest value,
          $Res Function(CreateChatMessageRequest) then) =
      _$CreateChatMessageRequestCopyWithImpl<$Res, CreateChatMessageRequest>;
  @useResult
  $Res call({@JsonKey(name: "chat_id") int chatId, String message});
}

/// @nodoc
class _$CreateChatMessageRequestCopyWithImpl<$Res,
        $Val extends CreateChatMessageRequest>
    implements $CreateChatMessageRequestCopyWith<$Res> {
  _$CreateChatMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateChatMessageRequestCopyWith<$Res>
    implements $CreateChatMessageRequestCopyWith<$Res> {
  factory _$$_CreateChatMessageRequestCopyWith(
          _$_CreateChatMessageRequest value,
          $Res Function(_$_CreateChatMessageRequest) then) =
      __$$_CreateChatMessageRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "chat_id") int chatId, String message});
}

/// @nodoc
class __$$_CreateChatMessageRequestCopyWithImpl<$Res>
    extends _$CreateChatMessageRequestCopyWithImpl<$Res,
        _$_CreateChatMessageRequest>
    implements _$$_CreateChatMessageRequestCopyWith<$Res> {
  __$$_CreateChatMessageRequestCopyWithImpl(_$_CreateChatMessageRequest _value,
      $Res Function(_$_CreateChatMessageRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? message = null,
  }) {
    return _then(_$_CreateChatMessageRequest(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateChatMessageRequest implements _CreateChatMessageRequest {
  _$_CreateChatMessageRequest(
      {@JsonKey(name: "chat_id") required this.chatId, required this.message});

  factory _$_CreateChatMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreateChatMessageRequestFromJson(json);

  @override
  @JsonKey(name: "chat_id")
  final int chatId;
  @override
  final String message;

  @override
  String toString() {
    return 'CreateChatMessageRequest(chatId: $chatId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChatMessageRequest &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChatMessageRequestCopyWith<_$_CreateChatMessageRequest>
      get copyWith => __$$_CreateChatMessageRequestCopyWithImpl<
          _$_CreateChatMessageRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateChatMessageRequestToJson(
      this,
    );
  }
}

abstract class _CreateChatMessageRequest implements CreateChatMessageRequest {
  factory _CreateChatMessageRequest(
      {@JsonKey(name: "chat_id") required final int chatId,
      required final String message}) = _$_CreateChatMessageRequest;

  factory _CreateChatMessageRequest.fromJson(Map<String, dynamic> json) =
      _$_CreateChatMessageRequest.fromJson;

  @override
  @JsonKey(name: "chat_id")
  int get chatId;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChatMessageRequestCopyWith<_$_CreateChatMessageRequest>
      get copyWith => throw _privateConstructorUsedError;
}
