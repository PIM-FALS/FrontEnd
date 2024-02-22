import 'package:fals/utils/constants/colors.dart';
import 'package:fals/utils/constants/image_strings.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Google Sign In
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100),
                color: TColors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image(
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                      image: AssetImage(TImages.google),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Adjust this space as needed
                  Text(
                    TTexts.google,
                    style: TextStyle(
                        color: Colors.black), // Adjust text style
                  ),
                ],
              ),
            ),
          ],
        ),
    
        SizedBox(width: TSizes.spaceBtwItems),
    
        // Facebook Sign In
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: TColors.grey),
                borderRadius: BorderRadius.circular(100),
                color: TColors.grey,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Image(
                      width: TSizes.iconMd,
                      height: TSizes.iconMd,
                      image: AssetImage(TImages.facebook),
                    ),
                  ),
                  const SizedBox(
                      width: 10), // Adjust this space as needed
                  Text(
                    TTexts.facebook,
                    style: TextStyle(
                        color: Colors.black), // Adjust text style
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}