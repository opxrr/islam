import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:islam/ui/settings/language_bottom_sheet.dart';
import 'package:islam/ui/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.theme,
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
                  provider.themeMode == ThemeMode.dark
                      ? AppLocalizations.of(context)!.dark_mode
                      : AppLocalizations.of(context)!.light_mode,
                  style: Theme.of(context).textTheme.bodyMedium,
                )),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                decoration: BoxDecoration(
                    color: Theme.of(context).cardTheme.color,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Color(0xFFFACC1D))),
                child: Text(
                  provider.languageCode == 'en' ? 'English' : 'العربية',
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

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context, builder: (buildContext) => LanguageBottomSheet());
  }
}
