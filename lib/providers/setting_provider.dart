import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String local = "en";
  ThemeMode themeMode = ThemeMode.dark;

  void changelanguage(String newLocal) {
    if (newLocal == local) return;
    local = newLocal;
    notifyListeners();
  }

  changeTheme(ThemeMode newThemeMode) {
    if (newThemeMode == themeMode) return;
    themeMode = newThemeMode;
    notifyListeners();
  }
  String getBackGround(){
    if(themeMode == ThemeMode.light) {
      return "assets/images/background.png";
    } else{
      return "assets/images/background_dark.png";
    }
  }
}
