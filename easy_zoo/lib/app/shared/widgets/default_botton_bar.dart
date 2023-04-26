import 'package:flutter/material.dart';

import '../../routes/routes.dart';
import 'button_bar.dart';

class DefaultBottonBar extends StatefulWidget {
  const DefaultBottonBar({Key? key}) : super(key: key);

  @override
  State<DefaultBottonBar> createState() => _DefaultBottonBarState();
}

class _DefaultBottonBarState extends State<DefaultBottonBar> {
  int pageIndex = 0;

// Esse array pode ser utilizado para controle de exibição de paginas como no caso de navegação por TabView
  final pages = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      height: size.height * 0.1,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          height: size.height * 0.07,
          width: size.width * 0.3,
          child: DeaultButtonBar(
            icon: Icons.home,
            isSelected: pageIndex == 0 ? true : false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            text: 'home',
          ),
        ),
        SizedBox(
          height: size.height * 0.07,
          width: size.width * 0.3,
          child: DeaultButtonBar(
            icon: Icons.favorite,
            isSelected: pageIndex == 1 ? true : false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
                Navigator.pushNamed(context, Routes.favorites);
              });
            },
            text: 'Favorite',
          ),
        ),
        SizedBox(
          height: size.height * 0.07,
          width: size.width * 0.3,
          child: DeaultButtonBar(
            icon: Icons.person,
            isSelected: pageIndex == 2 ? true : false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            text: 'Profile',
          ),
        ),
      ]),
    );
  }
}
