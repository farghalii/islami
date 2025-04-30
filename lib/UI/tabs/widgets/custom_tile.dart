import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/UI/screens/sura_details_screen.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class CustomTile extends StatelessWidget {
  const CustomTile(
      {super.key, required this.surahInfo, required this.onClicked});
  final SurahInfo surahInfo;
  final void Function(int id) onClicked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SuraDetailsScreen.routename, arguments: surahInfo);
        onClicked(surahInfo.sura_count);
      },
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: SizedBox(
        height: 40,
        width: 40,
        child: Stack(
          children: [
            SvgPicture.asset(Appassets.suraVerseIcon),
            Center(
              child: Text(
                "${surahInfo.sura_count}",
                style: TextStyle(
                    color: AppColor.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      title: Text(
        surahInfo.enname,
        style: TextStyle(
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 20),
      ),
      subtitle: Text(
        '${surahInfo.verse_count} Verses',
        style: TextStyle(
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 14),
      ),
      trailing: Text(
        surahInfo.arname,
        style: TextStyle(
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 20),
      ),
    );
  }
}
