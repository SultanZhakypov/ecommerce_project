import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioSettings {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://run.mocky.io/v3/',
    ),
  );

  void setup() {
    final interceptors = dio.interceptors;
    interceptors.clear();

    final headerInterceptor =
        QueuedInterceptorsWrapper(onResponse: (e, handler) {
      return handler.next(e);
    }, onError: (DioError err, handler) {
      return handler.next(err);
    }, onRequest: (options, handler) {
      return handler.next(options);
    });
    final logInterceptor = LogInterceptor(
      requestHeader: true,
      error: true,
      request: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
    );

    interceptors.addAll(
      [
        if (kDebugMode) headerInterceptor,
        logInterceptor,
      ],
    );
  }
}
