import 'package:flutter/material.dart';
import 'package:islamy_app/UI/tabs/widgets/azkar_container.dart';
import 'package:islamy_app/UI/tabs/widgets/customTabStack.dart';
import 'package:islamy_app/UI/tabs/widgets/timeCard.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Timetab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabStack(
        bgImage: Appassets.timeBg,
        alignment: null,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Timecard(),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Azkar',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColor.offWhiteColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AzkarContainer(
                    image: Appassets.eveningAzkar,
                    text: 'Evening Azkar',
                  ),
                  AzkarContainer(
                    image: Appassets.morningAzkar,
                    text: 'Morning Azkar',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
