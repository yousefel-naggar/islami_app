import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';

class HadithTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    if (allAhadeth.isEmpty) {
      loadFile();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 2,
          ),
          Text(AppLocalizations.of(context)!.ahadeth,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.white)),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 2,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: Theme.of(context).colorScheme.primary,
                thickness: 1.5,
                endIndent: 50,
                indent: 50,
              ),
              itemCount: allAhadeth.length,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HadethDetails.routeName,
                          arguments: allAhadeth[index]);
                    },
                    child: Text(
                      "${allAhadeth[index].title}",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.white),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }

  loadFile() async {
    String value = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList = value.split("#");
    for (int i = 0; i < ahadethList.length; i++) {
      String hadeth = ahadethList[i];
      List<String> hadethLines = hadeth.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(title, content);
      allAhadeth.add(hadethModel);
    }
    ;
  }
}
