import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';
import 'package:test_flutter_dev_twistcode/models/reponse.dart'
    as ResponseModel;
import 'package:test_flutter_dev_twistcode/utils/constants.dart';

class RemoteDataProvider {
  Dio get dio => _dio();

  Dio _dio() {
    final options = BaseOptions(
      baseUrl: URL_BASE_API,
      connectTimeout: 20000,
      receiveTimeout: 10000,
      contentType: "application/json;charset=utf-8",
    );

    var dio = Dio(options);
   /* if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }*/
    return dio;
  }

  Future<ResponseModel.Response> fetchItems() async {
    try {
      Response response =
          await dio.post('items/search/api_key/teampsisthebest/');
      if (response.statusCode == 200) {
        return ResponseModel.Response(
            listItem:
                (response.data as List).map((x) => Item.fromJson(x)).toList(),
            errMsg: "");
      } else {
        return ResponseModel.Response(
            listItem: List(), errMsg: "Failed to load data!");
      }
    } catch (e, stacktrace) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT) {
        return ResponseModel.Response(
            listItem: List(), errMsg: "Connection Timeout!");
      } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
        return ResponseModel.Response(
            listItem: List(), errMsg: "Connection Timeout!");
      } else {
        return ResponseModel.Response(
            listItem: List(), errMsg: "Error: $e, Stack: $stacktrace");
      }
    }
  }
}
