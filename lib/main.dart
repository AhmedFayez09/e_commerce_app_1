import 'package:ecommerse_course/utils/app_routes.dart';
import 'package:ecommerse_course/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Fayez',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: TextTheme(
          headline1: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodyText1: TextStyle(
            height: 2,
            fontSize: 16,
            color: AppColors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}
