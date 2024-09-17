import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // For retrieving user ID from shared preferences
import 'package:http/http.dart' as http;

Future<void> deleteAccount(BuildContext context) async {
  // Retrieve userAccountID directly from SharedPreferences
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? userAccountID = prefs.getString('userAccountID');

  if (userAccountID != null) {
    // Make the API call to delete the account
    var response = await http.delete(
      Uri.parse('https://ptechapp-5ab6d15ba23c.herokuapp.com/user/$userAccountID'),
    );

    if (response.statusCode == 200) { // 200 indicates a successful operation, not 500
      log('Response Status: ${response.statusCode}');

      // Account deleted successfully, show confirmation
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account deleted successfully'))
      );

      // Remove the userAccountID from SharedPreferences
      await prefs.remove('userAccountID');

      // Navigate to the SignUpPage after deletion
      Navigator.pushReplacementNamed(context, '/signUp');
    } else {
      // Handle error and show feedback
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to delete account, please try again'))
      );
    }
  } else {
    // Handle case where userAccountID is not found
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not logged in'))
    );
  }
}
