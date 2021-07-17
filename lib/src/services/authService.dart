import 'package:estate_plus/src/models/core/ServiceResponse.dart';
import 'package:estate_plus/src/services/index.dart';
import 'package:estate_plus/utils/end_points.dart';

class AuthService {
  // AuthService()
  Future<ServiceResponse> LoginUser({email, password}) async {
    // await Future.delayed(Duration(seconds: 5));
    var data = {'email': email, 'password': password};
    var response = await apiService.makePostRequest(LOGIN_ENDPOINT, data, {});

    return ServiceResponse.fromJSON(response.toJSON());
  }
}
