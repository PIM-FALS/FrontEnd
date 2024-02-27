import 'package:fals/features/authentication/screens/password_configuration/reset_email/reset_password_with_email.dart';
import 'package:fals/features/authentication/screens/password_configuration/reset_otp/reset_password_with_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  int selectedOption = 0; // 0 for Email, 1 for SMS

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
              ///Headings
              Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 8.0),
              Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: 16.0),

              /// Email or Phone Check Box
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: TColors.lightGrey, // Adjust the color as needed
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero, // Remove default padding
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.email),
                      ), // Add an icon to the leading position
                      trailing: Radio(
                        value: 0,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value as int;
                          });
                        },
                      ),
                      title: Text("Via Email:"),
                      subtitle: Text("user@example.com"),
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: TColors.lightGrey, // Adjust the color as needed
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero, // Remove default padding
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.sms),
                      ),
                      // Add an icon to the leading position
                      trailing: Radio(
                        value: 1,
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value as int;
                          });
                        },
                      ),
                      title: Text("Via SMS:"),
                      subtitle: Text("+123456789"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Submit button outside the Column
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: 50.0,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              // Check the selected option and navigate accordingly
              if (selectedOption == 0) {
                // Navigate to EmailSentScreen
                Get.to(() => const EmailResetPassword());
              } else {
                // Navigate to OTPResetPassword screen
                Get.to(() => const OTPResetPassword());
              }
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ), backgroundColor: Color(0xFF74069A),
              padding: EdgeInsets.zero, // Set background color
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
                constraints: BoxConstraints(maxWidth: double.infinity, minHeight: 50),
                alignment: Alignment.center,
                child: Text(
                  TTexts.submit,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0, // Adjust font size as needed
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
