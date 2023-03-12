import 'package:ecommerce/core/constant/approute.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/login_controller.dart';
import '../../widget/auth/customauthheadertext.dart';
import '../../widget/auth/cutomauthbodytext.dart';
import '../../widget/auth/cutombuttomauth.dart';
import '../../widget/auth/cutomtextform.dart';
import '../../widget/auth/cutomtextsignup.dart';
import '../../widget/auth/logoauth.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sign In",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.grey),
          ),
          backgroundColor: AppColors.white,
        ),
        body: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(
              children: [
                LofgoAuth(),
                CutomAuthHeaderText(header: "2".tr),
                const CutomAuthBodyText(
                    body:
                        "Sign in with Email and Password Or Continue With Social Media"),
                const SizedBox(
                  height: 20,
                ),
                CutomTextForm(
                  obscureText: false,
                  hinttext: "Enter Email",
                  iconData: Icons.email,
                  labeltext: "Email",
                  textEditingController: controller.email,
                ),
                CutomTextForm(
                  obscureText: true,
                  hinttext: "Enter Your Password",
                  iconData: Icons.lock_outlined,
                  labeltext: "password",
                  textEditingController: controller.password,
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: InkWell(
                    onTap: () {
                      controller.goToForgetPassword();
                    },
                    child: Text(
                      "Forget Password",
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
                CutomButtomAuth(
                  name: "LogIn",
                  onPressed: () {
                    controller.Login();
                  },
                ),
                CustomTextSignup(
                  text1: "Don't Have An Account ?",
                  text2: "Sign Up",
                  onPressed: () {
                    controller.goToSignUp();
                  },
                )
              ],
            )));
  }
}
