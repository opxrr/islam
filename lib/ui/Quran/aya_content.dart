import 'package:flutter/material.dart';

class AyaContent extends StatelessWidget {
  String content;

  AyaContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
