import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/routes.dart';
import '../../shared/app_colors.dart';

class LoginController with ChangeNotifier {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  bool isValid = false;

  void isValidForm() {
    isValid = simpleValidate(passwordController.text.trim()) == null &&
        simpleValidate(userController.text.trim()) == null;

    notifyListeners();
  }

//função para validação simples dos dados de login
  String? simpleValidate(String? value) {
    if (value == null) {
      return 'Campo obrigatório';
    }

    if (value.isEmpty) {
      return 'Campo não pode ser vazio';
    }

    return null;
  }

//função que armazena os dados de login e efetua a navegação para home
  void login(String user, String password, BuildContext context) async {
    if (user == 'teste' && password == '12345') {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user', user);

      Navigator.pushReplacementNamed(context, Routes.home);
    } else {
      SnackBar snackBar = const SnackBar(
        duration: Duration(seconds: 3),
        content: Text(
          textAlign: TextAlign.center,
          'Login failed! User or Password incorrect. ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: AppColors.primaryColor,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
