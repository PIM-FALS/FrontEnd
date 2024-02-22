import 'package:fals/utils/constants/image_strings.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:fals/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
        Image(
          image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
          height: 100,
          width: 100,
        ),
        // Title
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        // Subtitle
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
