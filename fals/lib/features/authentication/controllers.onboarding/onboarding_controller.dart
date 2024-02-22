import 'package:fals/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;

      // Animate to the next page with a duration of 500 milliseconds
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves
            .easeInOut, // You can choose a different curve as per your preference
      );
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;

    // Navigate to LoginScreen with a fade transition
    Get.to(
      () => LoginScreen(),
      transition: Transition.fade,
      duration: const Duration(milliseconds: 500),
    );
  }
}
