import 'package:fals/common/widgets/login_signup/divider.dart';
import 'package:fals/common/widgets/login_signup/social_buttons.dart';
import 'package:fals/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:fals/utils/constants/colors.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isJournalist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const SignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
              FormDivider(dividerText: TTexts.orContinueWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              // Footer
              const SocialButtons(),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              // Sign in
              const SignIn(),
            ],
          ),
        ),
      ),
    );
  }
}
