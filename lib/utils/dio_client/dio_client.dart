import 'package:dio/dio.dart';
import 'package:flutter_chat_app/utils/dio_client/app_interceptors.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  static DioClient? _singleton;

  static late Dio _dio;

  DioClient._() {
    _dio = createDioClient();
  }

  factory DioClient() {
    return _singleton ??= DioClient._();
  }

  Dio get instance => _dio;

  Dio createDioClient() {
    final dio = Dio(
      BaseOptions(
          baseUrl: 'http://localhost',
          receiveTimeout: Duration(seconds: 15),
          connectTimeout: Duration(seconds: 15),
          sendTimeout: Duration(seconds: 15),
          headers: {
            Headers.acceptHeader: 'application/json',
            Headers.contentTypeHeader: 'application/json',
          }),
    );

    dio.interceptors.addAll([
      AppInterceptors(),
      // PrettyDioLogger(
      //   requestHeader: true,
      //   requestBody: true,
      //   responseHeader: true,
      //   responseBody: true,
      //   error: true,
      //   compact: true,
      //   maxWidth: 90,
      // ),
    ]);
    return dio;
  }
}
