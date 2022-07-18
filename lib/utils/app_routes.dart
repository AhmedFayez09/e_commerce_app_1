import 'package:ecommerse_course/utils/app_page.dart';
import 'package:ecommerse_course/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

import '../view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
AppRoute.login :(p0) => const Login(),
AppRoute.onBoarding :(p0) => const OnBoarding(),



};