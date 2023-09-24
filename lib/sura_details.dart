import 'package:flutter/material.dart';
import 'package:islami/tabs/sura_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
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
      ),
    );
  }
  loadFile(int ind){

  }
}
