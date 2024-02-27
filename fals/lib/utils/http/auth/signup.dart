import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> signupUser(
  String username,
  String fistName,
  String lastName,
  String email,
  String phoneNumber,
  String password,
) async {
  final url = Uri.parse('http://localhost:9090/auth//signup');
  final response = await http.post(
    url,
    body: json.encode({
      'username': username,
      'firstName': fistName,
      'lastName': lastName,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
    }),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 201) {
    // Successful signup, handle the response
    final userData = json.decode(response.body);
    print('User data: $userData');
  } else {
    // Failed signup, handle the error
    print('Failed to signup. Status code: ${response.statusCode}');
    print('Error message: ${response.body}');
  }
}
