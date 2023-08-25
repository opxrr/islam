import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode = 'en';

  void changeLanguage(String newLanguageCode) {
    languageCode = newLanguageCode;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/default_bg.png'
        : 'assets/images/dark_bg.png';
  }
}
