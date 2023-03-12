import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CutomButtomAuth extends StatelessWidget {
  final String name;
  final void Function() onPressed;
  const CutomButtomAuth({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primeryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
        onPressed: onPressed,
        child: Text("$name"),
      ),
    );
  }
}
