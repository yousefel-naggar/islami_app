import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';


class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  late int ctr;
  late int index;
  late List<String> tashbeeh;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ctr = 0;
    index = 0;
    tashbeeh = ["سبحان الله", "الحمد لله", "الله اكبر", "لا اله الا الله"];
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/sebha.png"),
          Spacer(),
          Text(
            AppLocalizations.of(context)!.numOfTasbeeh,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: provider.themeMode == ThemeMode.light
                    ? Theme.of(context).colorScheme.secondary
                    : Colors.white),
          ),
          Spacer(),
          InkWell(
            onTap: () => onClick(),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
                  ),
                  width: width * 0.15,
                  height: height * 0.09,
                  child: Center(
                    child: Text(
                      "$ctr",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.018),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).colorScheme.primary),
                  width: width * 0.4,
                  height: height * 0.059,
                  child: Center(
                    child: Text(
                      "${tashbeeh[index]}",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: provider.themeMode == ThemeMode.light
                              ? Theme.of(context).colorScheme.secondary
                              : Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer()
        ],
      ),
    );
  }

  onClick() {
    if (index == tashbeeh.length - 1 && ctr == 1) {
      index = 0;
      ctr = 0;
      setState(() {});
      return;
    }
    if (ctr == 33) {
      ctr = 0;
      index++;
    } else {
      ctr++;
    }
    setState(() {});
  }
}
