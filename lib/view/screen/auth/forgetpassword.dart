import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/forgetpassword_controller.dart';
import '../../widget/auth/customauthheadertext.dart';
import '../../widget/auth/cutomauthbodytext.dart';
import '../../widget/auth/cutombuttomauth.dart';
import '../../widget/auth/cutomtextform.dart';
import '../../widget/auth/cutomtextsignup.dart';
import '../../widget/auth/logoauth.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Check Email",
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
                CutomAuthHeaderText(header: "3".tr),
                const CutomAuthBodyText(body: "Enter Your Valied Email"),
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
                CutomButtomAuth(
                  name: "Check Your Email",
                  onPressed: () {
                    controller.goToVerfiyedCode();
                  },
                ),
              ],
            )));
  }
}
