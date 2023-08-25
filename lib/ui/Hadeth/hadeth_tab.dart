import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/ui/Hadeth/Hadeth.dart';
import 'package:islam/ui/Hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/hadeth_logo.png')),
        Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 1,
          margin: EdgeInsets.only(bottom: 4),
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_number,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 1,
          margin: EdgeInsets.only(top: 4),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: allHadethList.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ))
                : ListView.separated(
                    itemBuilder: (buildContext, index) {
                      return HadethTitleWidget(allHadethList[index]);
                    },
                    itemCount: allHadethList.length,
                    separatorBuilder: (buildContext, index) {
                      return Container(
                        color: Theme.of(context).hintColor,
                        width: double.infinity,
                        height: 1,
                        margin: EdgeInsets.symmetric(horizontal: 24),
                      );
                    }),
          ),
        )
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/filess/ahadeth .txt');
    List<String> splittedContent = fileContent.split("#");
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String hadethTitle = lines[0];
      lines.remove(0);
      String hadethContent = lines.join('\n');
      Hadeth hadeth = Hadeth(hadethTitle, hadethContent);
      hadethList.add(hadeth);
    }
    await Future.delayed(Duration(seconds: 0));
    allHadethList = hadethList;
    setState(() {});
  }
}
