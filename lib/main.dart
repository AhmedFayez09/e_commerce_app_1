import 'package:ecommerse_course/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding()
    );
  }
}

