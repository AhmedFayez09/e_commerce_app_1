import 'package:ecommerse_course/utils/app_page.dart';
import 'package:ecommerse_course/view/widget/language/custombuttomlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/localization/changelocal.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("1".tr, style: Theme.of(context).textTheme.headline1),
            SizedBox(
              height: Get.height * .09,
            ),
            CustomButtomLang(
              textbuttom: "Ar",
              onPressed: () {
                controller.changeLang("ar");
                Get.offAllNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtomLang(
              textbuttom: "En",
              onPressed: () {
                controller.changeLang("en");
                Get.offAllNamed(AppRoute.onBoarding);
              },
            ),
            CustomButtomLang(
              textbuttom: "Fr",
              onPressed: () {
                controller.changeLang("Fr");
                Get.offAllNamed(AppRoute.onBoarding);
              },
            ),
          ],
        ),
      ),
    );
  }
}
