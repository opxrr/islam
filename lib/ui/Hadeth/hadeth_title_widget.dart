import 'package:flutter/material.dart';
import 'package:islam/ui/Hadeth/hadeth_details.dart';

import 'Hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.hadethTitle,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
    );
  }
}
