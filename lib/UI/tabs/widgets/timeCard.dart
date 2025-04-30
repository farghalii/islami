import 'package:flutter/material.dart';
import 'package:islamy_app/core/utils/AppColors.dart';

class Timecard extends StatelessWidget {
  const Timecard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '16 Jul,',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColor.whiteColor),
                ),
                Text(
                  'Pray Time',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColor.blackColor.withValues(alpha: .7)),
                ),
                Text(
                  '09 Muh,',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColor.whiteColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2024',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColor.whiteColor),
                ),
                Text(
                  'Tuesday',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: AppColor.blackColor, fontWeight: FontWeight.bold),
                ),
                Text(
                  '1446',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: AppColor.whiteColor),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .02,
            ),
            Expanded(
              child: PageView.builder(
                  itemCount: 12,
                  controller:
                      PageController(viewportFraction: .3, initialPage: 4),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColor.blackColor.withValues(alpha: .5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ASR',
                              style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '04:38',
                              style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'PM',
                              style: TextStyle(
                                  color: AppColor.whiteColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: size.height * .04,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * .2,
                ),
                Text(
                  'Next Pray - 02:32',
                  style: TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.volume_off)
              ],
            )
          ],
        ),
      ),
    );
  }
}
