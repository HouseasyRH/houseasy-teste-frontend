import 'package:easy_zoo/app/presentation/home/home.dart';
import 'package:easy_zoo/app/presentation/login/login.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = '/';
  static const String home = '/home';

  static Route<dynamic> generareRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const Home(),
          settings: settings,
        );
      default:
        throw const FormatException('Rota não encontrada');
    }
  }
}
