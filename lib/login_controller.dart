import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'login_model.dart';

class LoginController {
   ValueNotifier<bool> _loading = ValueNotifier(false);
    ValueNotifier<bool> get loading => _loading;

  Future<void> LoginPage(loginmodel loginmodel) async {
    const String apiUrl = 'https://ptechapp-5ab6d15ba23c.herokuapp.com/user/authenticate';
    _loading.value = false ;
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(loginmodel.toJson()),
      );

      log('Request body: ${jsonEncode(loginmodel.toJson())}');
      log('Response status: ${response.statusCode}');
      log('Response body: ${response.body}');
      if (response.statusCode == 200 && response.body!='''{"success":false}''') {
       _loading.value = true;
       log(_loading.value.toString());
      }
      else {
        final errorData = jsonDecode(response.body);
        final errorMessage = errorData['message'] ?? 'Unknown error';
      }
    } catch (e) {
      log('Exception: $e');
    }
  }

}
