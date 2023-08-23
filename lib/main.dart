import 'package:flutter/material.dart';
import 'package:islam/ui//Home/home_screen.dart';
import 'package:islam/ui/Hadeth/hadeth_details.dart';
import 'package:islam/ui/Quran/sura_details.dart';
import 'package:islam/ui/Splash/splash_screen.dart';
import 'package:islam/ui/theme_data.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildConext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SurahDetaisScreen.routeName: (buildConext) => SurahDetaisScreen(),
        HadethDetailsScreen.routeName: (buldContext) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: MyThemeData.themeMode,
    );
  }
}
