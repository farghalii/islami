import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/home_tab/views/most_recent_views.dart';
import 'package:islamy_app/UI/tabs/home_tab/views/suras_list_views.dart';
import 'package:islamy_app/UI/tabs/widgets/customTabStack.dart';
import 'package:islamy_app/UI/tabs/widgets/custom_textField.dart';
import 'package:islamy_app/UI/tabs/widgets/custom_tile.dart';
import 'package:islamy_app/UI/tabs/widgets/sura_card.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/AppConst.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Qurantab extends StatefulWidget {
  const Qurantab({super.key});

  @override
  State<Qurantab> createState() => _QurantabState();
}

class _QurantabState extends State<Qurantab> {
  TextEditingController controller = TextEditingController();
  List<int> mostRecetList = [];

  @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  // Future<void> getData() async {
  //   SharedPreferences peref = await SharedPreferences.getInstance();
  //   List<String>? data = peref.getStringList(AppConst.mostRecentKey);
  //   mostRecetList = (data ?? []).map((e) => int.parse(e)).toList();
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return TabStack(
      bgImage: Appassets.quranBgImage,
      alignment: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomTextfield(
              suffix: InkWell(
                onTap: () {
                  controller.clear();
                  FocusScope.of(context).unfocus();
                  setState(() {});
                },
                child: Icon(
                  Icons.close,
                  color: AppColor.offWhiteColor,
                ),
              ),
              onChanged: (p0) {
                if (p0.length > 2) {
                  setState(() {});
                } else if (p0.isEmpty) {
                  setState(() {});
                }
              },
              controller: controller,
            ),
            Expanded(
              child: ListView(children: [
                MostRecentViews(
                  clickedSuras: mostRecetList,
                  onSuraClicked: getMostRecentSura,
                ),
                SurasListViews(
                  onClicked: getMostRecentSura,
                  search: controller.text.trim(),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  void getMostRecentSura(int id) {
    mostRecetList.insert(0, id);
    Set<int> temp = mostRecetList.toSet();
    mostRecetList = temp.toList();
    // SharedPreferences.getInstance().then(
    //   (preferences) {
    //     preferences.setStringList(
    //         AppConst.mostRecentKey,
    //         mostRecetList
    //             .map(
    //               (e) => e.toString(),
    //             )
    //             .toList());
    //   },
    // );

    setState(() {});
  }
}
