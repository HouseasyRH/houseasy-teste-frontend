import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_consts.dart';

class AppStyles {
  AppStyles();

  static const titleCardTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontFamily: AppConsts.fontFamily,
      fontWeight: FontWeight.w900);
  static const subtitleCardTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: AppConsts.fontFamily,
  );
  static const titleTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontFamily: AppConsts.fontFamily,
    fontWeight: FontWeight.w900,
  );
  static const descriptionTitleTextStyle = TextStyle(
    color: AppColors.backgroundColor,
    fontSize: 25,
    fontFamily: AppConsts.fontFamily,
    fontWeight: FontWeight.bold,
  );

  static const descriptionTextStyle = TextStyle(
    color: AppColors.backgroundColor,
    fontSize: 25,
    fontFamily: AppConsts.fontFamily,
    fontWeight: FontWeight.bold,
  );
  static const dataTitleTextStyle = TextStyle(
    color: AppColors.disabledColor,
    fontSize: 16,
    fontFamily: AppConsts.fontFamily,
    fontWeight: FontWeight.bold,
  );
  static const dataTextStyle = TextStyle(
    color: AppColors.disabledColor,
    fontSize: 14,
    fontFamily: AppConsts.fontFamily,
  );
  static const categoryButtonTextStyle = TextStyle(
      fontFamily: AppConsts.fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white);

  static const exploreButtonTextStyle = TextStyle(
      fontFamily: AppConsts.fontFamily,
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.white);
}
