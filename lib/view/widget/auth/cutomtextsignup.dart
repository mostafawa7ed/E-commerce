import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';

class CustomTextSignup extends StatelessWidget {
  final String text1, text2;
  final void Function()? onPressed;

  const CustomTextSignup(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        TextButton(
            onPressed: onPressed,
            child: Text(
              text2,
              style: TextStyle(color: AppColors.primeryColor),
            ))
      ],
    );
  }
}
