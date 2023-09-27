import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 30,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side:
                    BorderSide(color: MyThemeData.primaryLightColor, width: 2)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  thickness: 1,
                  color: MyThemeData.primaryLightColor,
                  endIndent: 40,
                  indent: 40,
                ),
                itemCount: verses.length,
                itemBuilder: (context, index) {
                  return Center(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${verses[index]}(${index + 1})",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall),
                  ));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int ind) async {
    String sura = await rootBundle.loadString("assets/files/${ind + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
