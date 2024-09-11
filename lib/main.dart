import 'package:firstapp/bottom_bar.dart';
import 'package:firstapp/intro_one.dart';
import 'package:firstapp/sign.dart';
import 'package:firstapp/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: const IntroOne(), // Set IntroOne as the initial screen
    debugShowCheckedModeBanner: false, // Disable debug banner
    routes: {
      SignUp.routeName: (context) => const SignUp(),
      IntroOne.routeNamed: (context) => const IntroOne(),
      BottomBar.routNamed: (context) => const BottomBar(),
      LoginPage.rout: (context) => const LoginPage(),
    },
  ),
);
