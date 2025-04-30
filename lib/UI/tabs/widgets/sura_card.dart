import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/UI/screens/sura_details_screen.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class SuraCard extends StatelessWidget {
  const SuraCard(
      {super.key, required this.surahInfo, required this.onSuraClicked});
  final SurahInfo surahInfo;
  final Function(int) onSuraClicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSuraClicked(surahInfo.sura_count);
        Navigator.of(context)
            .pushNamed(SuraDetailsScreen.routename, arguments: surahInfo);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: AppColor.mainColor,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Container(
          height: MediaQuery.of(context).size.height * .2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        surahInfo.enname,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.blackColor,
                            fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        surahInfo.arname,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: AppColor.blackColor,
                            fontSize: 30),
                      ),
                    ),
                    Text(
                      '${surahInfo.verse_count} Verses  ',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColor.blackColor,
                          fontSize: 18),
                    ),
                  ],
                ),
                Image.asset(
                  Appassets.quranLogo,
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
