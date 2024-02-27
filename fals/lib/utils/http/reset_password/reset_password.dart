import 'dart:convert';
import 'package:http/http.dart' as http;

// Reset Password with Email
Future<void> resetPasswordWithEmail(String email) async {
  final url = Uri.parse('YOUR_NODEJS_SERVER_URL/reset-password-email');
  try {
    final response = await http.post(
      url,
      body: json.encode({
        'email': email,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Successful request, handle the response
      final responseData = json.decode(response.body);
      print('Response data: $responseData');

      // Example: Notify the user that an email has been sent
      showSuccessMessage('Reset password email sent. Check your email for instructions.');
    } else {
      // Failed request, handle the error
      print('Failed to send reset password email. Status code: ${response.statusCode}');
      print('Error message: ${response.body}');

      // Example: Show an error message to the user
      showErrorMessage('Failed to send reset password email. Please try again.');
    }
  } catch (error) {
    // Handle other exceptions (e.g., network error)
    print('Error: $error');
    showErrorMessage('An error occurred. Please check your network connection and try again.');
  }
}

// Reset Password with Phone Number
Future<void> resetPasswordWithPhoneNumber(String phoneNumber) async {
  final url = Uri.parse('YOUR_NODEJS_SERVER_URL/reset-password-phone');
  try {
    final response = await http.post(
      url,
      body: json.encode({
        'phoneNumber': phoneNumber,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // Successful request, handle the response
      final responseData = json.decode(response.body);
      print('Response data: $responseData');

      // Example: Notify the user that an OTP has been sent
      showSuccessMessage('Reset password OTP sent to your phone. Check your messages.');
    } else {
      // Failed request, handle the error
      print('Failed to send reset password OTP. Status code: ${response.statusCode}');
      print('Error message: ${response.body}');

      // Example: Show an error message to the user
      showErrorMessage('Failed to send reset password OTP. Please try again.');
    }
  } catch (error) {
    // Handle other exceptions (e.g., network error)
    print('Error: $error');
    showErrorMessage('An error occurred. Please check your network connection and try again.');
  }
}

// Example: Show success message to the user
void showSuccessMessage(String message) {
  // Implement your UI logic to show a success message to the user
}

// Example: Show error message to the user
void showErrorMessage(String message) {
  // Implement your UI logic to show an error message to the user
}
