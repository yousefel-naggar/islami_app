import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/radio_image.png"),
          Text(
            "اذاعه القران الكريم",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.skip_previous,
                    color: MyThemeData.primaryLightColor,
                    size: 35,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.play_arrow,
                    color: MyThemeData.primaryLightColor,
                    size: 40,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.skip_next,
                    color: MyThemeData.primaryLightColor,
                    size: 35,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
