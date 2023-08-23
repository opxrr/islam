import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islam/ui/Home/home_screen.dart';
import 'package:islam/ui/theme_data.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Container(
        child: Image.asset(
          MyThemeData.themeMode == ThemeMode.light
              ? 'assets/images/splash.png'
              : 'assets/images/dark_splash.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
