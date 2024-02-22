import 'package:fals/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);


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
                TTexts.resetPassword,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: 16.0),

              /// New Password Input
              TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.newPassword,



                ),
              ),
              const SizedBox(height: 16.0),

              TextFormField(
                decoration: InputDecoration(
                  labelText: TTexts.confirmNewPassword,



                ),
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
            onPressed: () => Get.to(() => const LoginScreen()),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              padding: EdgeInsets.zero,
              primary: Color(0xFF74069A), // Set background color
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
