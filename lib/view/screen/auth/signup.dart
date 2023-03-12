import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/sginup_controller.dart';
import '../../widget/auth/customauthheadertext.dart';
import '../../widget/auth/cutomauthbodytext.dart';
import '../../widget/auth/cutombuttomauth.dart';
import '../../widget/auth/cutomtextform.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sign Up",
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
                CutomAuthHeaderText(header: "2".tr),
                const CutomAuthBodyText(
                    body:
                        "SignUp with Email and Password Or Continue With Social Media"),
                const SizedBox(
                  height: 20,
                ),
                CutomTextForm(
                  obscureText: false,
                  hinttext: "Enter UserName",
                  iconData: Icons.person_2_outlined,
                  labeltext: "Username",
                  textEditingController: controller.userName,
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
                  hinttext: "Enter Your Phone",
                  iconData: Icons.phone_android_outlined,
                  labeltext: "Phone",
                  textEditingController: controller.phone,
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
                  child: Text(
                    "Forget Password",
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                CutomButtomAuth(
                    name: "SignUp",
                    onPressed: () {
                      controller.SignUp();
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You Have Account ?"),
                    TextButton(
                        onPressed: () {
                          Get.offAllNamed("login");
                        },
                        child: Text(
                          "LogIn",
                          style: TextStyle(color: AppColors.primeryColor),
                        ))
                  ],
                )
              ],
            )));
  }
}
