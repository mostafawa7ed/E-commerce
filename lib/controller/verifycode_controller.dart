import 'package:ecommerce/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerificationPasswordController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerificationPasswordControllerImp extends VerificationPasswordController {
  late String verifycode;
  @override
  goToResetPassword() {
    Get.offAllNamed(AppRoute.resetPassword);
    // TODO: implement checkCode
  }

  @override
  checkCode() {
    // TODO: implement checkCode
    throw UnimplementedError();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
