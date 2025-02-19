import 'package:dio/dio.dart';
import 'package:my_app/core/errors/exceptions.dart';

class Apicaller {
  Dio dio = Dio();

  //get method
  // ignore: strict_raw_type
  Future<Response> getData(String path) async {
    try {
      return dio.get(
        path,
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
    } on DioException catch (e) {
      throw ServerException(
        statusCode: e.response!.statusCode ?? 500,
        message: e.message ?? '--',
      );
    }
  }
}
