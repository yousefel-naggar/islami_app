import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsetsDirectional.all(12),
      color: provider.themeMode == ThemeMode.light
          ? Colors.white
          : Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              provider.changelanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: provider.local == "en"
                      ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary)
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.white),
                ),
                Visibility(
                  visible: provider.local == "en",
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changelanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("عربي",
                    style: provider.local == "ar"
                        ? Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary)
                        : Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: provider.themeMode == ThemeMode.light
                                ? Theme.of(context).colorScheme.secondary
                                : Colors.white)),
                Visibility(
                  visible: provider.local == "ar",
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
