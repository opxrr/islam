import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

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
              provider.enableLightMode();
            },
            child: Text(AppLocalizations.of(context)!.light_mode,
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: () {
              provider.enableDarkMode();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark_mode,
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
            ),
          ),
        ],
      ),
    );
  }
}
