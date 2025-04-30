import 'package:flutter/material.dart';
import 'package:islamy_app/UI/screens/homeScreen.dart';

class CustomSplash extends StatefulWidget {
  const CustomSplash({super.key});
    static final String routeName = '/splashScreen';

  @override
  State<CustomSplash> createState() => _CustomSplashState();
}

class _CustomSplashState extends State<CustomSplash> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  navigateToHome() async {
    await Future.delayed(
      Duration(milliseconds: 3000),
    );
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Homescreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        image: AssetImage('assets/images/custom_splash/Splash Screen.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}