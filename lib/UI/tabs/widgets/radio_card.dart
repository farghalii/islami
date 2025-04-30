import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: size.width * .7,
        height: size.height * .15,
        decoration: BoxDecoration(
            color: AppColor.mainColor, borderRadius: BorderRadius.circular(24)),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image(
                image: AssetImage(Appassets.hadithBranding),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text(
                    'Radio Ibrahim Al-Akdar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 50,
                      ),
                      Icon(
                        Icons.volume_up,
                        size: 40,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}