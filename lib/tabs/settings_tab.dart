import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("language"),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: MyThemeData.primaryLightColor)),
              child: Text("English"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.019,
          ),
          Text("Themeing"),
          InkWell(onTap: () {
            showThemingBottomSheet();
          },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: MyThemeData.primaryLightColor)),
              child: Text("light"),
            ),
          )
        ],
      ),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      builder: (context) =>
          Container(height: MediaQuery.of(context).size.height * 0.6),
    );
  }
  showThemingBottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      context: context,
      builder: (context) =>
          Container(height: MediaQuery.of(context).size.height * 0.6),
    );
  }
}
