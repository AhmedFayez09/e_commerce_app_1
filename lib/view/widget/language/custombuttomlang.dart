import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomButtomLang extends StatelessWidget {
   CustomButtomLang({
    Key? key,
    required this.textbuttom,
    required this.onPressed,
  }) : super(key: key);
  final String textbuttom;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColors.primaryColor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbuttom,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
