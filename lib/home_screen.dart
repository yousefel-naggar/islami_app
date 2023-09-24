import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/hadith_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/settings_tab.dart';

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
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.bodyLarge,
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
                    label: "radio",
                    backgroundColor: MyThemeData.primaryLightColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/sebha_icon.png")),
                    label: "sebha",
                    backgroundColor: MyThemeData.primaryLightColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/moshaf.png")),
                    label: "quran",
                    backgroundColor: MyThemeData.primaryLightColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                    label: "hadith",
                    backgroundColor: MyThemeData.primaryLightColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "settings",
                    backgroundColor: MyThemeData.primaryLightColor),
              ]),
          body: tabs[_indexOfBtnNavBar],
        ),
      ],
    );
  }
}
