import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/AppColors.dart';

class AzkarContainer extends StatelessWidget {
  const AzkarContainer({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .43,
      height: size.height * .28,
      decoration: BoxDecoration(
        color: AppColor.blackColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColor.mainColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(image),
          ),
          Spacer(),
          Text(
            text,
            style: TextStyle(
                color: AppColor.offWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
