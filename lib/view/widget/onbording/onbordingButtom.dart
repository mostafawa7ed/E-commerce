import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';

class OnBordingCutomButtom extends GetView<OnBrodingControllerImp> {
  const OnBordingCutomButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 70),
        color: AppColors.primeryColor,
        onPressed: () {
          controller.next();
        },
        child: Text("Continue"),
      ),
    );
  }
}
