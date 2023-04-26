// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:easy_zoo/app/shared/app_colors.dart';

class DeaultButtonBar extends StatelessWidget {
   DeaultButtonBar({
    Key? key,
    required this.icon,
    required this.text,
    required this.isSelected,
    required this.onPressed
  }) : super(key: key);
  final String text;
  final bool isSelected;
  IconData icon;

  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
        backgroundColor: MaterialStateProperty.all(isSelected?AppColors.backgroundColor:Colors.transparent),
        foregroundColor: MaterialStateProperty.all(isSelected?Colors.white:AppColors.disabledColor),
      ),
      onPressed: onPressed,
      icon: Icon(icon),
      label:isSelected? Text(text):SizedBox(),
    );
  }
}
