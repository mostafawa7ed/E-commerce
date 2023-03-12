import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class MaterialButtomLanguage extends StatelessWidget {
  final String language;
  final void Function()? onPressed;
  const MaterialButtomLanguage({
    super.key,
    required this.language,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //width: double.infinity / 3,
        child: MaterialButton(
          color: AppColors.primeryColor,
          padding: EdgeInsets.symmetric(horizontal: 50),
          onPressed: onPressed,
          child: Text("$language"),
        ),
      ),
    );
  }
}
