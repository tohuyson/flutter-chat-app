import 'package:flutter_chat_app/models/app_response.dart';
import 'package:flutter_chat_app/models/requests/requests.dart';
import 'package:flutter_chat_app/models/user_model.dart';

abstract class BaseAuthRepository {
  Future<AppResponse<AuthUser?>> register(RegisterRequest request);

  Future<AppResponse<AuthUser?>> login(LoginRequest request);

  Future<AppResponse<UserEntity?>> loginWithToken();

  Future<AppResponse> logout();
}
