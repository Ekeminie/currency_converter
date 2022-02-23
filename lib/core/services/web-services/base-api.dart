import 'package:currency_converter/constant/constants.dart';
import 'package:dio/dio.dart';
import '../../../locator.dart';
import '../storage-service.dart';

connect() {
  StorageService storageService = getIt<StorageService>();

  BaseOptions options = new BaseOptions(
      baseUrl: Constants.BASE_URL,
      connectTimeout: 100000,
      receiveTimeout: 30000,
      responseType: ResponseType.plain);
  Dio dio = new Dio(options);
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // String value = await storageService.readItem(key: token);
        // if (value != null) {
        //   options.headers['Authorization'] = value;
        // }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        return handler.next(e);
      },
    ),
  );

  return dio;
}
