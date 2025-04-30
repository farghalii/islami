import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class TabStack extends StatelessWidget {
  const TabStack(
      {super.key,
      required this.bgImage,
      required this.child,
      this.fit,
      required this.alignment});
  final String bgImage;
  final Widget child;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(bgImage),
            fit: fit ?? BoxFit.fill,
            alignment: alignment ?? Alignment.topCenter),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                AppColor.blackColor.withValues(alpha: .7),
                AppColor.blackColor,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [.6, 1]),
        ),
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .2,
          ),
          Expanded(child: child)
        ]),
      ),
    );
  }
}
