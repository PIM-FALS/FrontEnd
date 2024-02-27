import 'package:fals/features/authentication/screens/login/login.dart';
import 'package:fals/utils/constants/colors.dart';
import 'package:fals/utils/constants/image_strings.dart';
import 'package:fals/utils/constants/sizes.dart';
import 'package:fals/utils/constants/text_strings.dart';
import 'package:fals/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../reset_password.dart';

class OTPSentScreen extends StatelessWidget {
  const OTPSentScreen({Key? key});

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
                TTexts.changeYourPasswordOTP,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: TSizes.spaceBtwItems),
              pinCodeTextField(context),
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
                        TTexts.submit,
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
                    // Show the alert when Resend OTP is clicked
                    showResendOTPAlert(context);
                  },                  child: Text(
                    TTexts.resendOTP,
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
  void showResendOTPAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resend OTP'),
          content: Text('Code resent!'),
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
  Widget pinCodeTextField(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: PinCodeTextField(
        appContext: context,
        length: 4,
        enableActiveFill: true,
        animationType: AnimationType.fade,
        animationDuration: const Duration(milliseconds: 300),
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          fieldHeight: 80,
          fieldWidth: 80,
          activeColor: brightness == Brightness.dark ? TColors.white : TColors.primary,
          activeFillColor: brightness == Brightness.dark ? TColors.black : TColors.lightGrey,
          inactiveColor: brightness == Brightness.dark ? TColors.white : TColors.black,
          selectedFillColor: brightness == Brightness.dark ? TColors.black : TColors.grey,
          inactiveFillColor: brightness == Brightness.dark ? TColors.black : TColors.white,
        ),
      ),
    );
  }

}
