import 'package:fals/bottom_nav_bar.dart';
import 'package:fals/features/authentication/screens/signup/signup.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../password_configuration/forget_password.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(TTexts.dontHaveAccount),

        // Sign Up
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()),
          child: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [
                  Color(0xFF74069A),
                  Color(0xFFFF8086),
                ],
                stops: [0.3, 0.7],
              ).createShader(bounds);
            },
            child: const Text(
              TTexts.signUp,
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Username
            TextFormField(
              decoration: InputDecoration(
                labelText: TTexts.username,
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            // Password
            TextFormField(
              decoration: InputDecoration(
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            // Remember me & Forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember me

                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value) {}),
                    Text(TTexts.rememberMe),
                  ],
                ),

                // Forgot password

                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          Color(0xFF74069A),
                          Color(0xFFFF8086),
                        ],
                        stops: [0.3, 0.7],
                      ).createShader(bounds);
                    },
                    child: const Text(
                      TTexts.forgetPassword,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Sign In
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const BottomNavigationMenu()),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: EdgeInsets.zero,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF74069A),
                        Color(0xFFFF8086),
                      ], // Your gradient colors
                    ),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                        maxWidth: double.infinity, minHeight: 50),
                    alignment: Alignment.center,
                    child: Text(
                      TTexts.signIn,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0, // Adjust font size as needed
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
