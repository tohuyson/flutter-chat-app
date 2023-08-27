import 'package:dio/dio.dart';
import 'package:flutter_chat_app/models/requests/create_chat_message_request.dart';
import 'package:flutter_chat_app/models/chat_message_model.dart';
import 'package:flutter_chat_app/models/app_response.dart';
import 'package:flutter_chat_app/repositories/chat_message/base_chat_message_repository.dart';
import 'package:flutter_chat_app/repositories/core/endpoints.dart';
import 'package:flutter_chat_app/utils/dio_client/dio_client.dart';

class ChatMessageRepository extends BaseChatMessageRepository {
  final Dio _dioClient;

  ChatMessageRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().instance;

  @override
  Future<AppResponse<ChatMessageEntity?>> createChatMessage(
    CreateChatMessageRequest request,
    String socketId,
  ) async {
    final response = await _dioClient.post(
      EndPoints.createChatMessage,
      data: request.toJson(),
      options: Options(
        headers: {
          'X-Socket-ID': socketId,
        }
      )
    );

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => response.data["success"] && json != null
          ? ChatMessageEntity.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<List<ChatMessageEntity>>> getChatMessages(
      {required int chatId, required int page}) async {
    final response =
        await _dioClient.get(EndPoints.getChatMessage, queryParameters: {
      'page': page,
      'chat_id': chatId,
    });

    return AppResponse.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? (json as List<dynamic>)
              .map((e) => ChatMessageEntity.fromJson(e))
              .toList()
          : [],
    );
  }
}
