import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/sura_card.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';

class MostRecentViews extends StatelessWidget {
  final List<int> clickedSuras;
  final Function(int) onSuraClicked;
  const MostRecentViews({super.key, required this.clickedSuras, required this.onSuraClicked});
  @override
  Widget build(BuildContext context) {
    var temp = clickedSuras.map((e) => SurahInfo.suras[e - 1]).toList();

    return clickedSuras.isEmpty
        ? SizedBox()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Most Recent',
                style: TextStyle(
                    color: AppColor.offWhiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .24,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: temp.length,
                  itemBuilder: (context, index) => SuraCard(
                    key: UniqueKey(),
                    surahInfo: temp[index], onSuraClicked: onSuraClicked,
                  ),
                ),
              ),
            ],
          );
  }
}
