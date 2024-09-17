import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../modelPage/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController {
  // Function to handle user login
  Future<bool> LoginPage(loginmodel loginModel) async {
    const String apiUrl = 'https://ptechapp-5ab6d15ba23c.herokuapp.com/user/authenticate';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(loginModel.toJson()),
      );

      log('Request body: ${jsonEncode(loginModel.toJson())}');
      log('Response status: ${response.statusCode}');
      log('Response body: ${response.body}');

      if (response.statusCode == 200 && response.body != '''{"success":false}''') {
        final responseData = jsonDecode(response.body);

        if (responseData.containsKey('userAccountID')) {
          String userAccountID = responseData['userAccountID'];

          // Save userAccountID to SharedPreferences
          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('userAccountID', userAccountID);

          log('Login successful. User Account ID saved: $userAccountID');
          return true; // Login success
        }
      } else {
        // Handle login failure
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['message'] ?? 'Unknown error';
        log('Login failed: $errorMessage');
      }
    } catch (e) {
      log('Exception during login: $e');
    }
    return false; // Login failure
  }
}
