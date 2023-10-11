import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:islami/tabs/hadith_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _indexOfBtnNavBar = 2;
  late List<Widget> tabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs = [RadioTab(), SebhaTab(), QuranTab(), HadithTab(), SettingsTab()];
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getBackGround(),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.white),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _indexOfBtnNavBar,
              onTap: (value) {
                _indexOfBtnNavBar = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/radio_icon.png")),
                    label: AppLocalizations.of(context)!.radioIcon,
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                    label: AppLocalizations.of(context)!.sebihaIcon,
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                    label: AppLocalizations.of(context)!.quranIcon,
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: AppLocalizations.of(context)!.hadithIcon,
                    backgroundColor: Theme.of(context).colorScheme.background),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settingIcon,
                    backgroundColor: Theme.of(context).colorScheme.background),
              ]),
          body: tabs[_indexOfBtnNavBar],
        ),
      ],
    );
  }
}
