import 'package:flutter/material.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage('en');
              },
              child: provider.languageCode == 'en'
                  ? getSelectedWidget('English', context)
                  : getUnSelectedWidget('English', context)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.changeLanguage('ar');
              },
              child: provider.languageCode == 'ar'
                  ? getSelectedWidget('العربيه', context)
                  : getUnSelectedWidget('العربيه', context)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String modeTitle, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          modeTitle,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Theme.of(context).hintColor),
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).hintColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String modeTitle, BuildContext context) {
    return Text(modeTitle, style: Theme.of(context).textTheme.bodyMedium);
  }
}
