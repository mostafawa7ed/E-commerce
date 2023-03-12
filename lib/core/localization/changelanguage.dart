import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//we add this controller her not in folder controller because we use it in more than page
class LocalController extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("language", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedpreflang = myServices.sharedPreferences.getString("language");
    print(sharedpreflang);
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
    } else {
      //to make app work by language your device
      language = Locale(Get.deviceLocale!.languageCode);
      print(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
