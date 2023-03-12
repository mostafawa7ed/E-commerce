import 'package:ecommerce/core/constant/approute.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/resetpassword.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/successsignup.dart';
import 'package:ecommerce/view/screen/auth/verifycode.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/onbording.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.onbording: (context) => const OnBording(),
  AppRoute.login: (context) => LogIn(),
  AppRoute.language: (context) => const Language(),
  AppRoute.sginup: (context) => SignUp(),
  AppRoute.forgetPassword: (context) => ForgetPassword(),
  AppRoute.verifyed: (context) => VerifyCode(),
  AppRoute.resetPassword: (context) => ResetPassword(),
  AppRoute.successSignUp: (context) => SuccessSignUp(),
};
