import 'package:estate_plus/frontend/providers/base_provider.dart';
import 'package:estate_plus/src/helper/interaction.dart';
import 'package:estate_plus/src/services/index.dart';
import 'package:flutter/cupertino.dart';

class LoginProvider extends BaseProvider {
  String? _email;
  String? _password;

  String get email => _email!;
  String get password => _password!;

  set setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  set setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  void login(BuildContext context) async {
    try {
      FocusScope.of(context).unfocus();
      setLoading = true;
      print(_email);
      print(_password);

      var response =
          await authService.LoginUser(email: _email, password: _password);

      if (response.status == true) {
        print('Done');
      } else {
        print(response.message);
        MessageAlert.showErrorAlert(context, response.message!);
      }

      setLoading = false;
    } catch (error) {
      setLoading = false;
      MessageAlert.showErrorAlert(context, 'An error occurred');
      rethrow;
    }
  }
}
