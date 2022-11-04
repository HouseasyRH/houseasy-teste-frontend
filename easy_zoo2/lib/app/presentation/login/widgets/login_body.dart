import 'package:easy_zoo/app/routes/routes.dart';
import 'package:easy_zoo/app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            children: const [
              Text(
                'Easy Zoo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w900),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                  obscureText: true,
                ),
              ),
              SizedBox(
                width: 150,
                height: 50,
                child: DefaultButton(
                  background: AppColors.primaryColor,
                  radius: 30,
                  route: Routes.home,
                  title: 'Entrar',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.route,
    required this.title,
    required this.radius,
    required this.background,
  }) : super(key: key);

  final String route;
  final String title;
  final double radius;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(background),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
