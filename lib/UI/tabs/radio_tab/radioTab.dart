import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/customTabStack.dart';
import 'package:islamy_app/UI/tabs/widgets/radio_card.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Radiotab extends StatelessWidget {
  const Radiotab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabStack(
      bgImage: Appassets.radioBg,
      alignment: null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: AppColor.mainColor,
                      minimumSize: Size(MediaQuery.of(context).size.width * .4,
                          MediaQuery.of(context).size.height * .01)),
                  onPressed: () {},
                  child: Text(
                    'Radio',
                    style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: AppColor.mainColor,
                      minimumSize: Size(MediaQuery.of(context).size.width * .4,
                          MediaQuery.of(context).size.height * .01)),
                  onPressed: () {},
                  child: Text(
                    'Reciters',
                    style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return RadioCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}