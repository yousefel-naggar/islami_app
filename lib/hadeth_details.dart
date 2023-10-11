import 'package:flutter/material.dart';
import 'package:islami/hadeth_model.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.getBackGround()),
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
            color: provider.themeMode == ThemeMode.light
                ? Colors.white
                : Theme.of(context).colorScheme.background,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 2)),
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                  color: Theme.of(context).colorScheme.primary,
                  indent: 40,
                  endIndent: 40,
                  thickness: 2,
                ),
                itemCount: args.content.length,
                itemBuilder: (context, index) {
                  return Text(
                    "${args.content[index]}",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: provider.themeMode == ThemeMode.light
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.white),
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
