import 'package:flutter/material.dart';

import '../presentation/datails/details.dart';
import '../presentation/favorites/favorites.dart';
import '../presentation/home/home.dart';
import '../presentation/login/login.dart';

class Routes {
  static const String login = '/';
  static const String home = '/home';
  static const String details = '/details';
  static const String favorites = '/favorites';

  static Route<dynamic> generareRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(
          builder: (_) => const Login(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );
      case details:
        return MaterialPageRoute(
          builder: (_) => const Details(),
          settings: settings,
        );
      case favorites:
        return MaterialPageRoute(
          builder: (_) => const Favorites(),
          settings: settings,
        );
      default:
        throw const FormatException('Rota não encontrada');
    }
  }
}
