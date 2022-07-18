import 'package:ecommerse_course/core/constant/theme.dart';
import 'package:ecommerse_course/core/localization/changelocal.dart';
import 'package:ecommerse_course/utils/app_routes.dart';
import 'package:ecommerse_course/view/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'view/screen/language.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Ahmed Fayez',
      theme: AppTheme.themeData,
      home: const Language(),
      routes: routes,
    );
  }
}
