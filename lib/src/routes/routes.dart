import 'package:flutter/material.dart';

import '../core/error/exceptions.dart';
import '../features/home/pages/home_page.dart';
import '../features/home/pages/main_page.dart';
import '../features/splash/page/splash_page.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String home = 'home';
  static const String mainPage = 'mainPage';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());

      default:
        throw RouteException('Route not found');
    }
  }
}
