import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';
import '../../shared/widgets/default_botton_bar.dart';
import 'widgets/home_body.dart';

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
        title: const Text('Hello User'),
      ),
      body: SingleChildScrollView(child: HomeBody()),
      bottomNavigationBar: const DefaultBottonBar(),
    );
  }
}
