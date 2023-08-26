import 'package:flutter_chat_app/models/app_response.dart';
import 'package:flutter_chat_app/models/user_model.dart';

abstract class BaseUserRepository {
  Future<AppResponse<List<UserEntity>>> getUsers();
}
