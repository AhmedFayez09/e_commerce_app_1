import 'package:ecommerse_course/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            SizedBox(height: Get.width * 0.1),
            Image.asset(
              onBoardingList[i].image!,
              width: Get.width * .9,
              height: Get.height * .4,
              fit: BoxFit.fill,
            ),
            SizedBox(height: Get.width * 0.16),
            Text(
              onBoardingList[i].title!,
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: Get.width * 0.04),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        );
      },
    );
  }
}
