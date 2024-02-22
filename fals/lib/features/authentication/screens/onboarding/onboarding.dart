import 'package:fals/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:fals/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:fals/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:fals/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:fals/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal PageView
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: AssetImage(
                  "assets/images/on_boarding_images/onboarding1.png",
                ),
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AssetImage(
                  "assets/images/on_boarding_images/onboarding2.png",
                ),
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AssetImage(
                  "assets/images/on_boarding_images/onboarding3.png",
                ),
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          // SmoothPageIndicator
          const OnBoardingDotNavigation(),

          // Next button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
