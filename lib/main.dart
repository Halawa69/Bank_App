import 'package:firstapp/subClasses/bottom_bar.dart';
import 'package:firstapp/uiPages/intro_one.dart';
import 'package:firstapp/uiPages/sign.dart';
import 'package:firstapp/uiPages/login.dart';
import 'package:flutter/material.dart';

import 'uiPages/more_page.dart';

void main() => runApp(
  MaterialApp(
    home:  const IntroOne(),
    debugShowCheckedModeBanner: false,
    routes: {
      SignUp.routeName: (context) => const SignUp(),
      IntroOne.routeNamed: (context) => const IntroOne(),
      BottomBar.routNamed: (context) => const BottomBar(),
      LoginPage.rout: (context) => const LoginPage(),
    },
  ),
);
