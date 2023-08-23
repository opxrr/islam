import 'package:flutter/material.dart';
import 'package:islam/ui/Hadeth/Hadeth.dart';
import 'package:islam/ui/theme_data.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth-details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/images/default_bg.png'
                  : 'assets/images/dark_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.hadethTitle),
        ),
        body: Column(children: [
          Expanded(
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: SingleChildScrollView(
                child: Text(
                  args.hadethContent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
