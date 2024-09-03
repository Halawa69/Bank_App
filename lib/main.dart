import 'package:firstapp/bottom_bar.dart';
import 'package:firstapp/first_page.dart';
import 'package:firstapp/fourth_page.dart';
import 'package:firstapp/intro_one.dart';
import 'package:firstapp/second_page.dart';
import 'package:firstapp/sign.dart';
import 'package:flutter/material.dart';
import 'first_page.dart';
import 'fourth_page.dart';


void main() => runApp(MaterialApp(
  home: const IntroOne(),
  debugShowCheckedModeBanner: false,
  routes: {
    SignUp.routeName: (context) => const SignUp(),
    IntroOne.routeNamed: (context) => const IntroOne(),
    BottomBar.routNamed: (context) => const BottomBar(),
  },

));


