import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'routes/routes.dart';
import 'shared/app_colors.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? route;

  Future<String?> getUserInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final userInstance = prefs.getString('user');

    return userInstance;
  }

  redirectUser() async {
    String? user = await getUserInstance();

    if (user != null) {
      setState(() {
        route = Routes.home;
      });
    } else {
      setState(() {
        route = Routes.login;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    redirectUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'EasyZoo App',
        theme: ThemeData(
          primarySwatch: Colors.orange,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),
          ),
        ),
        onGenerateRoute: Routes.generareRoute,
        initialRoute: route);
  }
}
