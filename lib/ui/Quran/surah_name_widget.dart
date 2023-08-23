import 'package:flutter/material.dart';
import 'package:islam/ui/Quran/sura_details.dart';

class SurahNameWidget extends StatelessWidget {
  String title;
  int index;

  SurahNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SurahDetaisScreen.routeName,
            arguments: SurahDetailsScreenArgs(title, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
