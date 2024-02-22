import 'package:fals/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: const ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: Color(0xFF74069A),
          dotHeight: 10,
          dotWidth: 10,
        ),
      ),
    );
  }
}
