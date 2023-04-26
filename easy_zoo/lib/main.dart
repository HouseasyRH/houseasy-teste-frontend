import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/my_app.dart';
import 'app/presentation/datails/details_controller.dart';
import 'app/presentation/home/home_controller.dart';
import 'app/presentation/login/login_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<LoginController>(
        create: (_) => LoginController(),
      ),
      ChangeNotifierProvider<HomeController>(
        create: (_) => HomeController(),
      ),
      ChangeNotifierProvider<DetailsController>(
        create: (_) => DetailsController(),
      ),
    ],
    child: MyApp(),
  ));
}
