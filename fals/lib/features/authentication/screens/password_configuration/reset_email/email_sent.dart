import 'package:fals/features/authentication/screens/login/login.dart';
import 'package:fals/utils/constants/image_strings.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:fals/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../reset_password.dart';

class EmailSentScreen extends StatelessWidget {
  const EmailSentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Title & Subtitle
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                        () => ResetPassword(),
                  ),
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
                        ],
                      ),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: double.infinity,
                        minHeight: 50,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        TTexts.done,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    // Show the alert when Resend email is clicked
                    showResendEmailAlert(context);
                  },                         child: Text(
                    TTexts.resendEmail,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  // Function to show the Resend OTP alert
  void showResendEmailAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resend Email'),
          content: Text('Email resent!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Close the alert dialog
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
