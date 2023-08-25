import 'package:flutter/material.dart';
import 'package:islam/ui/settings/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xFFFACC1D))),
                child: Text(
                  'Light Mode',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {},
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xFFFACC1D))),
                child: Text(
                  'English',
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => ThemeBottomSheet());
  }

  void showLanguageBottomSheet() {}
}
