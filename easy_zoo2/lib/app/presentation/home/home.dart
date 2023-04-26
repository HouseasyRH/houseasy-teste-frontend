import 'package:easy_zoo/app/presentation/home/widgets/home_body.dart';
import 'package:easy_zoo/app/shared/app_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'JosefinSans',
            fontWeight: FontWeight.bold),
        centerTitle: true,
        title: const Text('Ola Usuário'),
      ),
      body: const HomeBody(),
    );
  }
}
