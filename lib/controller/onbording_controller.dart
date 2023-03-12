import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBrodingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBrodingControllerImp extends OnBrodingController {
  int currentpage = 0;
  late PageController pageController;
  @override
  next() {
    if (currentpage > onBordingList.length - 2) {
      print("last page");
      Get.offAllNamed("login");
    } else {
      currentpage++;
      pageController.animateToPage(currentpage,
          duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
      update();
    }
  }

  @override
  onPageChanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
