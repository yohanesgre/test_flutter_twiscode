import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_flutter_dev_twistcode/models/item.dart';
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
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }
    return dio;
  }

  Future<List<Item>> fetchItems() async {
    try {
      Response response =
          await dio.post('items/search/api_key/teampsisthebest/');
      if (response.statusCode == 200) {
        return (response.data as List).map((x) => Item.fromJson(x)).toList();
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (error, stacktrace) {
      throw Exception("Exception occurred: $error stackTrace: $stacktrace");
    }
  }
}
