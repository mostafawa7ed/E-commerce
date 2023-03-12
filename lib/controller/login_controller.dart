import 'package:ecommerce/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LogInController extends GetxController {
  Login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LogInController {
  late TextEditingController email;
  late TextEditingController password;
  @override
  Login() {
    // TODO: implement Login
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.sginup);
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
