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
              child: provider.themeMode == ThemeMode.light
                  ? getSelectedWidget(
                      AppLocalizations.of(context)!.light_mode, context)
                  : getUnSelectedWidget(
                      AppLocalizations.of(context)!.light_mode, context)),
          SizedBox(
            height: 12,
          ),
          InkWell(
              onTap: () {
                provider.enableDarkMode();
              },
              child: provider.themeMode == ThemeMode.dark
                  ? getSelectedWidget(
                      AppLocalizations.of(context)!.dark_mode, context)
                  : getUnSelectedWidget(
                      AppLocalizations.of(context)!.dark_mode, context)),
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
