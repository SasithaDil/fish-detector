import 'package:fish_detector/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class ScreenRoutes {
  static const String toHomeScreen = 'toHomeScreen';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case ScreenRoutes.toHomeScreen:
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
    }
  }
}