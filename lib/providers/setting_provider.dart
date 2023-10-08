import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String local = "en";

  void changelanguage(String newLocal) {
    if (newLocal == local) return;
    local = newLocal;
    notifyListeners();
  }
}
