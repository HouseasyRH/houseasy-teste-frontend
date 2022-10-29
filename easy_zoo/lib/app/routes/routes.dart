import 'package:easy_zoo/app/screens/login/login.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String login = '/';

  static Route<dynamic> generareRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      /*case Details.route:
        return MaterialPageRoute(
          builder: (_) => const Details(),
          settings: settings,
        );*/
      default:
        throw const FormatException('Rota não encontrada');
    }
  }
}
