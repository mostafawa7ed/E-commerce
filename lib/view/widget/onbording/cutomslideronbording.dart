import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/onbording_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../data/datasource/static/static.dart';

class CutomSliderBording extends GetView<OnBrodingControllerImp> {
  CutomSliderBording({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Get.put(OnBrodingControllerImp());
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBordingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                const SizedBox(
                  height: 140,
                ),
                Text("${onBordingList[i].title}",
                    style: Theme.of(context).textTheme.bodyLarge),
                Image.asset(onBordingList[i].image!),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onBordingList[i].body!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ));
  }
}
