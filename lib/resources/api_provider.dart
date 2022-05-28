import 'package:dio/dio.dart';
import 'package:inovola_task/constants/string.dart';
import 'package:inovola_task/models/myModel.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<MyModel> fetchdata() async {
    try {
      Response response = await _dio.get(baseUrl);
      return MyModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MyModel.withError("Data not found / Connection issue");
    }
  }
}
