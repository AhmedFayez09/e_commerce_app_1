import 'package:ecommerse_course/core/constant/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData themeData = ThemeData(
    fontFamily: "PlayfairDisplay",
    textTheme: TextTheme(
      headline1: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      headline2: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
      bodyText1: TextStyle(
        height: 2,
        fontSize: 16,
        color: AppColors.grey,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
