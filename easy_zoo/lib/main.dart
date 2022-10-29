import 'package:easy_zoo/app/my_app.dart';
import 'package:easy_zoo/app/screens/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LoginController>(
        create: (_) => LoginController(),
      ),
      /* ChangeNotifierProvider(
        create: (_) => DetailsController(),
      ),*/
    ],
    child: const MyApp(),
  ));
}
