import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islam/ui/Quran/aya_content.dart';

import '../theme_data.dart';

class SurahDetaisScreen extends StatefulWidget {
  static const String routeName = 'surah-details';

  @override
  State<SurahDetaisScreen> createState() => _SurahDetaisScreenState();
}

class _SurahDetaisScreenState extends State<SurahDetaisScreen> {
  List<String> surahContent = [];

  @override
  Widget build(BuildContext context) {
    //casting
    var args =
        ModalRoute.of(context)?.settings.arguments as SurahDetailsScreenArgs;
    if (surahContent.isEmpty) readFile(args.index);
    // print (args.title);
    // print (args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/images/default_bg.png'
                  : 'assets/images/dark_bg.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(children: [
          Expanded(
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: surahContent.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (buildContext, index) {
                        return AyaContent(surahContent[index]);
                      },
                      itemCount: surahContent.length,
                      separatorBuilder: (buildContext, index) {
                        return Container(
                          color: Theme.of(context).hintColor,
                          height: 1,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 64),
                        );
                      },
                    ),
            ),
          ),
        ]),
      ),
    );
  }

  void readFile(int surahIndex) async {
    await Future.delayed(Duration(seconds: 1));
    String text =
        await rootBundle.loadString('assets/filess/${surahIndex + 1}.txt');
    List<String> lines = text.split('\n');

    List<String> numberedLines = [];
    for (int i = 0; i < lines.length; i++) {
      String lineNumber =
          (i + 1).toString(); // Convert the line number to a string
      String lineWithNumber =
          "${lines[i]} $lineNumber"; // Combine the content and the line number
      numberedLines
          .add(lineWithNumber); // Add the line with the number to the list
    }

    surahContent = numberedLines;
    setState(() {});
  }
}

class SurahDetailsScreenArgs {
  //Data Class
  String title;
  int index;

  SurahDetailsScreenArgs(this.title, this.index);
}
