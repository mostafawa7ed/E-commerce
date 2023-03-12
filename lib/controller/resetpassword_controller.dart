import 'package:ecommerce/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController reEnterPassword;
  @override
  checkEmail() {
    // TODO: implement Login
  }

  @override
  goToSuccessSignUp() {
    Get.offAllNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    password = TextEditingController();
    reEnterPassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    reEnterPassword.dispose();
    super.dispose();
  }
}
