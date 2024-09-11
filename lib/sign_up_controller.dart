import 'dart:convert';
import 'dart:developer';
import 'package:firstapp/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  final BuildContext context;

  SignUpController({required this.context});

  Future<void> signUp(User user) async {
    const String apiUrl = 'https://ptechapp-5ab6d15ba23c.herokuapp.com/user/register';

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(user.toJson()),
      );

      log('Request body: ${jsonEncode(user.toJson())}');
      log('Response status: ${response.statusCode}');
      log('Response body: ${response.body}');

      if (response.statusCode == 200) {
        Navigator.pushReplacementNamed(context, '/login');
      } else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['message'] ?? 'Unknown error';
        _showSnackBar('Sign Up Failed: $errorMessage');
      }
    } catch (e) {
      _showSnackBar('Error: $e');
      log('Exception: $e');
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
