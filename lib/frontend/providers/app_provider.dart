import 'package:estate_plus/frontend/providers/base_provider.dart';
import 'package:estate_plus/utils/styles/theme.dart';
import 'package:flutter/material.dart';

class AppProvider extends BaseProvider {
  String theme = 'light';

  changeTheme() {
    if (theme == 'light') {
      theme = 'dark';
    } else {
      theme = 'light';
    }
    print('Theme Changes');
    notifyListeners();
  }

  ThemeData getTheme() {
    if (theme == 'light') {
      return lightTheme;
    }
    return darkTheme;
  }
}
