import 'package:flutter/material.dart';
import '../../core/constant/colors.dart';
import '../widget/onbording/cutomslideronbording.dart';
import '../widget/onbording/onbordingButtom.dart';
import '../widget/onbording/onbordingdotanimate.dart';

class OnBording extends StatelessWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                child: CutomSliderBording(),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [OnBordingDotAnimate(), OnBordingCutomButtom()],
                ))
          ],
        ),
      ),
    );
  }
}
