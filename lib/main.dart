import 'package:estate_plus/frontend/providers/app_provider.dart';
import 'package:estate_plus/utils/routes.dart';
import 'package:estate_plus/utils/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (ontext) => AppProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Estate Plus',
          theme: value.getTheme(),
          initialRoute: '/',
          onGenerateRoute: (settings) =>
              RouteGenerator.onRouteGenerate(settings),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
