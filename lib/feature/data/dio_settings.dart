import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioSettings {
  DioSettings() {
    setup();
  }
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://run.mocky.io/v3/',
      contentType: 'application/json',
      headers: {'Accept': 'application/json'},
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
