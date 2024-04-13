import 'package:flutter/material.dart';
import 'package:karindam/src/views/home_screen.dart';

abstract class AppRoutes {
  static const String home = "/";

  static MaterialPageRoute _wrapRoute(Widget page) =>
      MaterialPageRoute(builder: (context) => page);

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return _wrapRoute(const HomeScreen());

      default:
        return _wrapRoute(
          Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
