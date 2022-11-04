import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/widgets/default_button.dart';
import '../login_controller.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginController = context.watch<LoginController>();
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/imgs/background.png',
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Easy Zoo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: loginController.simpleValidate,
                  controller: loginController.userController,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: loginController.simpleValidate,
                  onChanged: (value) => loginController.isValidForm(),
                  controller: loginController.passwordController,
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: size.width * 0.35,
                height: size.width * 0.14,
                child: DefaultButton(
                    enabled: loginController.isValid,
                    background: loginController.isValid
                        ? AppColors.primaryColor
                        : AppColors.disabledColor,
                    radius: 30,
                    title: 'Entrar',
                    onTap: () {
                      loginController.login(loginController.userController.text,
                          loginController.passwordController.text, context);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
