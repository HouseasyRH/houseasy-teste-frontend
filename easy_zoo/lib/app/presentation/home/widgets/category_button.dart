import 'package:flutter/material.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/app_styles.dart';

class CategoryButton extends StatelessWidget {
  CategoryButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.enabled = false})
      : super(key: key);

  final String title;
  bool enabled;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: enabled
            ? MaterialStateProperty.all(AppColors.primaryColor)
            : MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text(title, style: AppStyles.categoryButtonTextStyle),
    );
  }
}
