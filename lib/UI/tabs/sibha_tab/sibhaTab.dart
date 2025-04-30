import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/customTabStack.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Sibhatab extends StatefulWidget {
  @override
  State<Sibhatab> createState() => _SibhatabState();
}

class _SibhatabState extends State<Sibhatab> {
  double angleRatio = 0.0;
  List<String> doaa = ['سبحان الله', 'الحمد لله', 'الله اكبر', 'استغفر الله'];
  int counter = 1;
  int index = 0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TabStack(
      bgImage: Appassets.sebhaBg,
      alignment: null,
      child: Column(
        children: [
          SizedBox(
            height: size.height * .04,
          ),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: AppColor.whiteColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * .04,
          ),
          GestureDetector(
              onTap: () {
                imageRotation();
                onClickImage();

                setState(() {});
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: angleRatio,
                    alignment: Alignment.center,
                    child: Image(
                      width: size.width * .95,
                      image: AssetImage(Appassets.sebhaBody),
                    ),
                  ),
                  Column(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        doaa[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: AppColor.whiteColor,
                                fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$counter",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: AppColor.whiteColor,
                                fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }

  void onClickImage() {
    if (counter < 33)
      counter++;
    else {
      counter = 1;
      flag = true;
    }
    if (index < doaa.length && flag == true) {
      index++;
      flag = false;
    }
    if (index == doaa.length) index = 0;
  }

  void imageRotation() {
    angleRatio += .5;
  }
}
