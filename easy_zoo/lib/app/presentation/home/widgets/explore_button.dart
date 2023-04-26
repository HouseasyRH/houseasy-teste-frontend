import 'package:flutter/material.dart';

import '../../../shared/app_colors.dart';
import '../../../shared/app_styles.dart';

class ExploreButton extends StatelessWidget {
  ExploreButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Explore new',
            style: AppStyles.exploreButtonTextStyle,
          ),
          Icon(
            Icons.arrow_right,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
