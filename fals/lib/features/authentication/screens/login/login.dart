import 'package:fals/common/styles/spacing_Styles.dart';
import 'package:fals/common/widgets/login_signup/divider.dart';
import 'package:fals/common/widgets/login_signup/social_buttons.dart';
import 'package:fals/features/authentication/screens/login/widgets/login_form.dart';
import 'package:fals/features/authentication/screens/login/widgets/login_header.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo and title and subtitle
              const LoginHeader(),
              // Form
              const LoginForm(),
// Or sign in with
            ///touch id
              FormDivider(dividerText: TTexts.loginWithTouchtId.capitalize!),
              Container(
                alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/logos/scanner.png'), width: 100, height: 100),
                  )),
              const SizedBox(height: TSizes.spaceBtwItems),
              // Or sign in with
              ///Socials
              FormDivider(dividerText: TTexts.orContinueWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Footer
              const SocialButtons(),

              const SizedBox(height: TSizes.spaceBtwItems),

              // Sign up
              const SignUp(),
            ],
          ),
        ),
      ),
    );
  }
}
