import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/AppColors.dart';

class Apptheme {
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.mainColor),
    useMaterial3: true,
    scaffoldBackgroundColor: AppColor.blackColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: AppColor.mainColor,
      selectedItemColor: AppColor.whiteColor,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: AppColor.blackColor,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.mainColor),
        iconTheme: IconThemeData(size: 26, color: AppColor.mainColor)),
  );
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColor.brownColor),
    scaffoldBackgroundColor: AppColor.whiteColor,
    useMaterial3: true,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColor.whiteColor,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: AppColor.brownColor),
        iconTheme: IconThemeData(size: 26, color: AppColor.brownColor)),
  );
}
