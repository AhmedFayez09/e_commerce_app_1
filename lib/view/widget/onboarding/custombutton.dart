import 'package:ecommerse_course/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
   CustomButtonOnBoarding({Key? key,required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        color: AppColors.primaryColor,
        child:  Text(text),
      ),
    );
  }
}
