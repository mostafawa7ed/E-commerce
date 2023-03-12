import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/forgetpassword_controller.dart';
import '../../../controller/verifycode_controller.dart';
import '../../widget/auth/customauthheadertext.dart';
import '../../widget/auth/cutomauthbodytext.dart';
import '../../widget/auth/cutombuttomauth.dart';
import '../../widget/auth/cutomtextform.dart';

class VerifyCode extends StatelessWidget {
  VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerificationPasswordControllerImp controller =
        Get.put(VerificationPasswordControllerImp());
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Verification Code",
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
                CutomAuthHeaderText(header: "CheckCode"),
                const CutomAuthBodyText(body: "Enter Your Valied Email"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: OtpTextField(
                    textStyle: TextStyle(fontSize: 30),
                    fieldWidth: 50,
                    borderRadius: BorderRadius.circular(20),
                    numberOfFields: 5,
                    borderColor: AppColors.primeryColor,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      controller.goToResetPassword();
                    }, // end onSubmit
                  ),
                ),
                //CutomButtomAuth(name: "Check", onPressed: () {}),
              ],
            )));
  }
}
