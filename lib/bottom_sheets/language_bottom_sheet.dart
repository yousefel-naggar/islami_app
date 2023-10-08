import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              provider.changelanguage("en");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: provider.local == "en"
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: MyThemeData.primaryLightColor)
                      : Theme.of(context).textTheme.bodyMedium,
                ),
                Visibility(
                  visible: provider.local == "en",
                  child: Icon(
                    Icons.check,
                    color: MyThemeData.primaryLightColor,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changelanguage("ar");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "عربي",
                  style: provider.local == "ar"
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: MyThemeData.primaryLightColor)
                      : Theme.of(context).textTheme.bodyMedium,
                ),
                Visibility(
                  visible: provider.local == "ar",
                  child: Icon(
                    Icons.check,
                    color: MyThemeData.primaryLightColor,
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
