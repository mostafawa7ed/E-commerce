import 'package:ecommerce/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToLogIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController userName;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;
  @override
  SignUp() {
    // TODO: implement Login
  }

  @override
  goToLogIn() {
    Get.offAllNamed(AppRoute.login);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    phone.dispose();
    userName.dispose();
    super.dispose();
  }
}
