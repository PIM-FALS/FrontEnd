import 'package:flutter/material.dart';

class EditCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Upload Image of Card:'),
            // Add image upload widget here
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Card Number'),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(labelText: 'Card Owner'),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Expiration Date:'),
                      // Add Date Picker here
                      SizedBox(height: 8.0),
                      ElevatedButton(
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );

                          if (pickedDate != null && pickedDate != selectedDate) {
                            // Update selectedDate with the picked date
                            selectedDate = pickedDate;
                          }
                        },
                        child: Text('Select Date', style: TextStyle(fontSize: 10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CVV:'),
                      TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
