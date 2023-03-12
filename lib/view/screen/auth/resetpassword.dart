import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/forgetpassword_controller.dart';
import '../../../controller/resetpassword_controller.dart';
import '../../widget/auth/customauthheadertext.dart';
import '../../widget/auth/cutomauthbodytext.dart';
import '../../widget/auth/cutombuttomauth.dart';
import '../../widget/auth/cutomtextform.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Reset Password",
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
                CutomAuthHeaderText(header: "New Password"),
                const CutomAuthBodyText(body: "Plz Enter New Password"),
                const SizedBox(
                  height: 20,
                ),
                CutomTextForm(
                  obscureText: false,
                  hinttext: "Enter New Password",
                  iconData: Icons.email,
                  labeltext: "Password",
                  textEditingController: controller.password,
                ),
                CutomTextForm(
                  obscureText: false,
                  hinttext: "ReEnter Your Password",
                  iconData: Icons.email,
                  labeltext: "ReEnter Password",
                  textEditingController: controller.reEnterPassword,
                ),
                CutomButtomAuth(
                  name: "Save ",
                  onPressed: () {
                    controller.goToSuccessSignUp();
                  },
                ),
              ],
            )));
  }
}
