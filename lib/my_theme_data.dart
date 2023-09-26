import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryLightColor = Color(0xFFB7935F);
  static Color secondaryLightColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: secondaryLightColor, size: 30),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 20,
              color: secondaryLightColor,
              fontWeight: FontWeight.bold),
          bodyMedium: GoogleFonts.elMessiri(
              fontSize: 25,
              color: secondaryLightColor,
              fontWeight: FontWeight.bold),
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30,
              color: secondaryLightColor,
              fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle: GoogleFonts.elMessiri(fontSize: 15),
          type: BottomNavigationBarType.shifting,
          backgroundColor: primaryLightColor,
          selectedItemColor: secondaryLightColor,
          unselectedItemColor: Colors.white),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
      )));
}
