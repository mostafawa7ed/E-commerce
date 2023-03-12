import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelanguage.dart';
import '../widget/language/cutommaterialbuttom.dart';

class Language extends GetView<LocalController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "1".tr,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButtomLanguage(
            language: "AR",
            onPressed: () {
              controller.changeLang("ar");
              Get.offAllNamed("onbording");
            },
          ),
          MaterialButtomLanguage(
            language: "EN",
            onPressed: () {
              controller.changeLang("en");
              Get.offAllNamed("onbording");
            },
          )
        ]),
      ),
    );
  }
}
