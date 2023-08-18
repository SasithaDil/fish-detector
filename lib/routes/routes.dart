import 'package:fish_detector/features/splash_screen.dart';
import 'package:flutter/material.dart';

class ScreenRoutes {
  static const String toSplashScreen = 'toSplashScreen';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // var args = settings.arguments;
    switch (settings.name) {
      case ScreenRoutes.toSplashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
    }
  }
}