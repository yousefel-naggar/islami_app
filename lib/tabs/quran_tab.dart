import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/sura_details.dart';
import 'package:islami/tabs/sura_model.dart';
import 'package:provider/provider.dart';

import '../providers/setting_provider.dart';

class QuranTab extends StatelessWidget {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/quran_image.png"),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 3,
          ),
          Text(AppLocalizations.of(context)!.suraNames,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: provider.themeMode == ThemeMode.light
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.white)),
          Divider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 3,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: Theme.of(context).colorScheme.primary,
              thickness: 1,
              indent: 40,
              endIndent: 40,
            ),
            itemCount: suraName.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, SuraDetails.routeName,
                      arguments: SuraModel(suraName[index], index));
                },
                child: Center(
                    child: Text(
                  suraName[index],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.themeMode == ThemeMode.light
                          ? Theme.of(context).colorScheme.secondary
                          : Colors.white),
                )),
              );
            },
          ))
        ],
      ),
    );
  }
}
