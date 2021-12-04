import 'package:demo/configs/app_config.dart';
import 'package:demo/configs/app_constant.dart';
import 'package:dio/dio.dart';

import 'api_client.dart';
import 'api_interceptors.dart';

class ManagerApi {
  late final Dio dio;
  late final ApiClient apiClient;

  static final ManagerApi instance = ManagerApi._privateConstructor();

  ManagerApi._privateConstructor() {
    dio = Dio();
    dio.options.connectTimeout = AppConstant.connectTimeout;
    dio.interceptors.add(ApiInterceptors());
    apiClient = ApiClient(dio, baseUrl: AppConfig.baseUrl);
  }
}
