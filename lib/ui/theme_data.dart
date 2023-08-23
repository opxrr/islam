import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xFFB7935F);
  static const Color darkPrimaryColor = Color(0xFF141A2E);
  static const Color ligthMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8F8F8);
  static const Color darkAccentColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: lightPrimaryColor),
    primaryColor: lightPrimaryColor,
    hintColor: lightPrimaryColor,
    cardTheme: const CardTheme(color: Colors.white),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: ligthMainTextColor, fontSize: 30)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white),
    textTheme: const TextTheme(
      displaySmall: TextStyle(color: ligthMainTextColor, fontSize: 32),
      headlineLarge: TextStyle(color: ligthMainTextColor, fontSize: 24),
      bodyLarge: TextStyle(color: ligthMainTextColor, fontSize: 24),
      bodyMedium: TextStyle(color: ligthMainTextColor, fontSize: 20),
    ),
  );
  static var darkTheme = ThemeData(
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: darkAccentColor),
    primaryColor: darkPrimaryColor,
    hintColor: darkAccentColor,
    cardTheme: const CardTheme(color: darkPrimaryColor),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(color: darkMainTextColor, fontSize: 30)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFB7935F),
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white),
    textTheme: const TextTheme(
      displaySmall: TextStyle(color: darkMainTextColor, fontSize: 32),
      headlineLarge: TextStyle(color: darkMainTextColor, fontSize: 24),
      bodyLarge: TextStyle(color: darkMainTextColor, fontSize: 24),
      bodyMedium: TextStyle(color: darkMainTextColor, fontSize: 20),
    ),
  );
  static ThemeMode themeMode = ThemeMode.dark;
}
