import 'package:flutter/material.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${args.title}",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: MyThemeData.primaryLightColor,width: 2)),
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(separatorBuilder: (context, index) => Divider(
                color: MyThemeData.primaryLightColor,indent: 40,endIndent: 40,thickness: 2,
              ),
                itemCount: args.content.length,
                itemBuilder: (context, index) {
                  return Text(
                    "${args.content[index]}",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
