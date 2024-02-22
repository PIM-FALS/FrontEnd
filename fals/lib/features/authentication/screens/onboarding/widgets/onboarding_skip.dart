import 'package:fals/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: 20,

      child: TextButton(

        onPressed: () => OnBoardingController.instance.skipPage(),
        child: Container(
          height: 45,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
            color: TColors.darkGrey,
          ),
          alignment: Alignment.center,
          child: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
