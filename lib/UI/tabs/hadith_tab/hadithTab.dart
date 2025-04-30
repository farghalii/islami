import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/customTabStack.dart';
import 'package:islamy_app/UI/tabs/widgets/hadithCard.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Hadithtab extends StatelessWidget {
  const Hadithtab({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TabStack(
        bgImage: Appassets.hadithBg,
        alignment: Alignment.topCenter,
        fit: BoxFit.fitHeight,
        child: CarouselSlider(
          options: CarouselOptions(
              height: size.height * .8, enlargeCenterPage: true),
          items: List.generate(50, (index) => index + 1).map((i) {
            return Builder(
              builder: (BuildContext context) {
                return   Hadithcard(
                  index: i,
                );
              },
            );
          }).toList(),
        ));
  }
}
