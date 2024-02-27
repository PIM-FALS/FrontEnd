import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> loginUser(String email, String password) async {
  final url = Uri.parse('http://localhost:9090/auth/signin');
  final response = await http.post(
    url,
    body: json.encode({'email': email, 'password': password}),
    headers: {'Content-Type': 'application/json'},
  );

  if (response.statusCode == 200) {
    // Successful login, handle the response
    final userData = json.decode(response.body);
    print('User data: $userData');
  } else {
    // Failed login, handle the error
    print('Failed to login. Status code: ${response.statusCode}');
    print('Error message: ${response.body}');
  }
}
