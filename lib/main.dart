import 'package:flutter/material.dart';
import 'package:islamy_app/UI/screens/sura_details_screen.dart';
import 'package:islamy_app/core/utils/appTheme.dart';
import 'package:islamy_app/UI/screens/custom_splash.dart';
import 'package:islamy_app/UI/screens/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    darkTheme: Apptheme.darkTheme,
    theme: Apptheme.lightTheme,
    themeMode: ThemeMode.dark,
    debugShowCheckedModeBanner: false,
    home: Homescreen(),
    routes: {
      CustomSplash.routeName: (_) => CustomSplash(),
      Homescreen.routeName: (_) => Homescreen(),
      SuraDetailsScreen.routename: (_) => SuraDetailsScreen(),
    },
    initialRoute: CustomSplash.routeName,
  ));
}
