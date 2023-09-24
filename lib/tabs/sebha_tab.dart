import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/sebha.png"),
          Spacer(),
          Text(
            "Number of Tasbeeh",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Spacer(),
          InkWell(
            onTap: () => onClick(),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromRGBO(183, 147, 95, 100),
                  ),
                  width: width * 0.15,
                  height: height * 0.09,
                  child: Center(
                    child: Text(
                      "$ctr",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.018),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyThemeData.primaryLightColor),
                  width: width * 0.4,
                  height: height * 0.059,
                  child: Center(
                    child: Text(
                      "${tashbeeh[index]}",
                      style: Theme.of(context).textTheme.bodyMedium,
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
