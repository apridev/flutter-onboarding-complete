import 'package:flutter/material.dart';
import 'package:started_complete/home-page.dart';
import 'package:started_complete/pages/login-page.dart';
import 'package:started_complete/pages/onboarding-page.dart';
import 'package:started_complete/pages/register-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => OnBoardingPage(),
        '/login-page' : (context) => LoginPage(),
        '/register-page':(context) => RegisterPage(),
      },
    );
  }
}

