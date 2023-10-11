import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryLightColor = Color(0xFFB7935F);
  static Color secondaryLightColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme(brightness: Brightness.light,
          primary: Color(0xFFB7935F),
          onPrimary: Color(0xFFF8F8F8),
          secondary: Color(0xFF242424),
          onSecondary: Color(0xFFF8F8F8),
          error: Colors.red,
          onError: Colors.white70,
          background: Color(0xFFB7935F),
          onBackground: Color(0xFF242424),
          surface: Colors.white60,
          onSurface: Color(0xFF242424)),
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
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFFB7935F),
          selectedItemColor: Color(0xFF242424),
          unselectedItemColor: Colors.white),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
      )));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(brightness: Brightness.dark,
          primary: Color(0xFFFACC1D),
          onPrimary: Color(0xFFF8F8F8),
          secondary: Color(0xFF242424),
          onSecondary: Color(0xFFF8F8F8),
          error: Colors.red,
          onError: Colors.white70,
          background: Color(0xFF141A2E),
          onBackground: Color(0xFF242424),
          surface: Colors.white60,
          onSurface: Color(0xFF242424)),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: primaryLightColor, size: 30),
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
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFF141A2E),
          selectedItemColor: Color(0xFFFACC1D),
          unselectedItemColor: Colors.white),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
          )));
}
