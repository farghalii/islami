import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/custom_tile.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';

class SurasListViews extends StatelessWidget {
  const SurasListViews({super.key, required this.search,required this.onClicked});
  final String? search;
  final void Function(int id) onClicked;

  @override
  Widget build(BuildContext context) {
    List<SurahInfo> filterdSuras = SurahInfo.suras
        .where(
          (Element) =>
              Element.arname.contains(search ?? '') ||
              Element.enname.toLowerCase().contains(search ?? ''.toLowerCase()),
        )
        .toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Suras List',
          style: TextStyle(
              color: AppColor.offWhiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: filterdSuras.length,
          itemBuilder: (context, index) => CustomTile(
            surahInfo: filterdSuras[index], onClicked:onClicked  ,
          ),
          separatorBuilder: (BuildContext context, int index) => Divider(
            endIndent: 50,
            indent: 50,
            color: AppColor.whiteColor,
          ),
        ),
      ],
    );
  }
}
