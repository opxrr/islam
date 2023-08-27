import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:islam/ui//Home/home_screen.dart';
import 'package:islam/ui/Hadeth/hadeth_details.dart';
import 'package:islam/ui/Quran/sura_details.dart';
import 'package:islam/ui/Splash/splash_screen.dart';
import 'package:islam/ui/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (buildConext) => HomeScreen(),
        SplashScreen.routeName: (buildContext) => SplashScreen(),
        SurahDetaisScreen.routeName: (buildConext) => SurahDetaisScreen(),
        HadethDetailsScreen.routeName: (buldContext) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('ar')],
      locale: Locale(provider.languageCode),
    );
  }
}
