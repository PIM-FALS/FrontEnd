import 'dart:io';

import 'package:fals/features/authentication/screens/signup/journalist_signup/edit_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../utils/constants/colors.dart';

class DocumentVerificationPage extends StatefulWidget {
  @override
  _DocumentVerificationPageState createState() =>
      _DocumentVerificationPageState();
}

class _DocumentVerificationPageState
    extends State<DocumentVerificationPage> {
  String selectedDocument = 'Passport';
  String selectedCard = 'Visa';
  File? pickedImage;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (image != null) {
        pickedImage = File(image.path);
      } else {
        pickedImage = null; // Handle the case when no image is picked
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Document Verification'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Identity Documents',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedDocument = 'Passport';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedDocument == 'Passport'
                          ? Colors.blue
                          : Colors.grey,
                    ),
                    child: Text('Passport'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedDocument = 'ID Card';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: selectedDocument == 'ID Card'
                          ? Colors.blue
                          : Colors.grey,
                    ),
                    child: Text('ID Card'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            if (selectedDocument == 'Passport')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Passport Number'),
                  ),
                  SizedBox(height: 16.0),
                  Text('Upload Passport Image:'),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100),
                        color: TColors.grey,
                      ),
                      child: pickedImage != null
                          ? Image.file(
                        File(pickedImage!.path),
                        fit: BoxFit.cover,
                      )
                          : Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(Icons.camera),
                            ),
                            SizedBox(width: 8),
                            Text('Pick an image'),
                          ],
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            if (selectedDocument == 'ID Card')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'National ID Card Number'),
                  ),
                  SizedBox(height: 16.0),
                  Text('Upload Image of ID Card:'),
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100),
                        color: TColors.grey,
                      ),
                      child: pickedImage != null
                          ? Image.file(
                        File(pickedImage!.path),
                        fit: BoxFit.cover,
                      )
                          : Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Icon(Icons.camera),
                            ),
                            SizedBox(width: 8),
                            Text('Pick an image'),
                          ],
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            SizedBox(height: 32.0),
            Text(
              'Bank Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            buildCreditCardRow('Visa'),
            buildCreditCardRow('Mastercard'),
            buildCreditCardRow('PayPal'),
            buildCreditCardRow('Apple Pay'),
          ],
        ),
      ),
    );
  }

  Widget buildCreditCardRow(String cardName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(cardName),
          Text('Valid'), // Replace with your logic for validity
          ElevatedButton(
            onPressed: () {
              Get.to(() => EditCardScreen());

            },
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }


}
