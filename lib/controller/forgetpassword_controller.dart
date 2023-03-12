import 'package:ecommerce/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  goToVerfiyedCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController email;
  @override
  checkEmail() {
    // TODO: implement Login
  }

  @override
  goToVerfiyedCode() {
    Get.offAllNamed(AppRoute.verifyed);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
