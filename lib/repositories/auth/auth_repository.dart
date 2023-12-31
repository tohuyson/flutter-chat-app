import 'package:dio/dio.dart';
import 'package:flutter_chat_app/models/user_model.dart';
import 'package:flutter_chat_app/models/requests/register_request.dart';
import 'package:flutter_chat_app/models/requests/login_request.dart';
import 'package:flutter_chat_app/models/app_response.dart';
import 'package:flutter_chat_app/repositories/auth/base_auth_repository.dart';
import 'package:flutter_chat_app/repositories/core/endpoints.dart';
import 'package:flutter_chat_app/utils/dio_client/dio_client.dart';

class AuthRepository extends BaseAuthRepository {
  final Dio _dioClient;

  AuthRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().instance;

  @override
  Future<AppResponse<AuthUser?>> login(LoginRequest request) async {
    final response = await _dioClient.post(
      EndPoints.login,
      data: request.toJson(),
    );

    return AppResponse<AuthUser?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? AuthUser.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<UserEntity?>> loginWithToken() async {
    final response = await _dioClient.post(
      EndPoints.loginWithToken,
    );

    return AppResponse<UserEntity?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? UserEntity.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse> logout() async {
    final response = await _dioClient.get(
      EndPoints.logout,
    );

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => null,
    );
  }

  @override
  Future<AppResponse<AuthUser?>> register(RegisterRequest request) async {
    final response = await _dioClient.post(
      EndPoints.register,
      data: request.toJson(),
    );

    return AppResponse<AuthUser?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? AuthUser.fromJson(json)
          : null,
    );
  }
}
