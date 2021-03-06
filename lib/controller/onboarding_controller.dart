import 'package:ecommerse_course/data/datasource/static/static.dart';
import 'package:ecommerse_course/utils/app_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController;

  @override
  next() {
    currentPage++;
if(currentPage> onBoardingList.length-1) {
  Get.offAllNamed(AppRoute.login);
}else{
pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
}



    
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
