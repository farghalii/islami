import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/UI/tabs/hadith_tab/hadithTab.dart';
import 'package:islamy_app/UI/tabs/home_tab/quranTab.dart';
import 'package:islamy_app/UI/tabs/radio_tab/radioTab.dart';
import 'package:islamy_app/UI/tabs/sibha_tab/sibhaTab.dart';
import 'package:islamy_app/UI/tabs/tima_tab/timeTab.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});
  static final String routeName = '/homeScreen';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> tabs = [
    Qurantab(),
    Hadithtab(),
    Sibhatab(),
    Radiotab(),
    Timetab()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              tabs[index],
              Positioned(
                left: 0,
                right: 0,
                top: 10,
                child: Image(
                  image: AssetImage(Appassets.logoImage),
                  height: MediaQuery.of(context).size.height * .2,
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                index = value;
                setState(() {});
              },
              currentIndex: index,
              items: [
                BottomNavigationBarItem(
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.blackColor.withValues(
                            alpha: .6,
                          )),
                      child: SvgPicture.asset(
                        Appassets.quranIcon,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      Appassets.quranIcon,
                    ),
                    label: 'home'),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.blackColor.withValues(
                            alpha: .6,
                          )),
                      child: SvgPicture.asset(
                        Appassets.hadithIcon,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      Appassets.hadithIcon,
                    ),
                    label: 'hadith'),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.blackColor.withValues(
                            alpha: .6,
                          )),
                      child: SvgPicture.asset(
                        Appassets.sebhaIcon,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      Appassets.sebhaIcon,
                    ),
                    label: 'sebha'),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.blackColor.withValues(
                            alpha: .6,
                          )),
                      child: SvgPicture.asset(
                        Appassets.radioIcon,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      Appassets.radioIcon,
                    ),
                    label: 'radio'),
                BottomNavigationBarItem(
                    activeIcon: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: AppColor.blackColor.withValues(
                            alpha: .6,
                          )),
                      child: SvgPicture.asset(
                        Appassets.timeIcon,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),
                    ),
                    icon: SvgPicture.asset(
                      Appassets.timeIcon,
                    ),
                    label: 'time'),
              ]),
        ),
      ),
    );
  }
}
