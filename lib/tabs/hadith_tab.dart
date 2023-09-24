import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            color: MyThemeData.primaryLightColor,
            thickness: 2,
          ),
          Text("Ahadeth",style: Theme.of(context).textTheme.bodyMedium),
          Divider(
            color: MyThemeData.primaryLightColor,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
