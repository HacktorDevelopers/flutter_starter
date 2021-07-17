import 'package:dio/dio.dart';
import 'package:estate_plus/src/models/core/ApiResponse.dart';

class ApiService {
  Future<ApiResponse> makePostRequest(url, data, headers) async {
    return await Dio()
        .post(url, data: FormData.fromMap(data))
        .then((value) => ApiResponse.fromJSON(value.data));
  }

  Future<ApiResponse> makeGetRequest(url, headers) async {
    return await Dio()
        .get(url)
        .then((value) => ApiResponse.fromJSON(value.data));
  }
}
