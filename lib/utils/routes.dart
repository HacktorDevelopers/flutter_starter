import 'package:estate_plus/frontend/providers/login_provider.dart';
import 'package:estate_plus/frontend/screen/auth/login_page.dart';
import 'package:estate_plus/frontend/screen/dashboard.dart';
import 'package:estate_plus/frontend/screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RouteGenerator {
  static onRouteGenerate(RouteSettings settings) {
    var name = settings.name;
    var argument = settings.arguments;

    switch (name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => Dashboard());
      case '/auth/login':
        return MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider(
                  create: (context) => LoginProvider(),
                  child: LoginPage(),
                ));
      default:
        return MaterialPageRoute(
            builder: (context) => Container(
                  child: Center(
                    child: Text("Page Not Found"),
                  ),
                ));
    }
  }
}
