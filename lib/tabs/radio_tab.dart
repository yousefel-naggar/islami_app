import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';


class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Text(
            AppLocalizations.of(context)!.quranRadio,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: provider.themeMode == ThemeMode.light
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.skip_previous,
                    color: Theme.of(context).colorScheme.primary,
                    size: 35,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.play_arrow,
                    color: Theme.of(context).colorScheme.primary,
                    size: 40,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.skip_next,
                    color: Theme.of(context).colorScheme.primary,
                    size: 35,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
