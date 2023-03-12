import 'package:ecommerce/controller/onbording_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../data/datasource/static/static.dart';

class OnBordingDotAnimate extends StatelessWidget {
  const OnBordingDotAnimate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBrodingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBordingList.length,
                    (index) => AnimatedContainer(
                          margin: EdgeInsets.all(5),
                          duration: Duration(milliseconds: 900),
                          width: controller.currentpage == index ? 20 : 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: AppColors.primeryColor,
                              borderRadius: BorderRadius.circular(20)),
                        ))
              ],
            ));
  }
}
