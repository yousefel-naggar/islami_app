import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.asset(
      "assets/images/splash_screen.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ));


  }
}
