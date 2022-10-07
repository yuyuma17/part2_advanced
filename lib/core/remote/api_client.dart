import 'package:dio/dio.dart';

class ApiClient {
  final client = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      connectTimeout: 60000,
    ),
  );

  ApiClient() {
    client.interceptors.add(
      LogInterceptor(responseBody: true, requestHeader: true),
    );
  }
}
