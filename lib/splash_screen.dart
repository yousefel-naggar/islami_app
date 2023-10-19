import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Scaffold(
        body: Image.asset(
      provider.themeMode == ThemeMode.light
          ? "assets/images/splash_screen.png"
          : "assets/images/splash screen dark.png",
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ));
  }
}
