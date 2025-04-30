import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/core/models/hadith_content.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class Hadithcard extends StatefulWidget {
  final int index;

  const Hadithcard({super.key, required this.index});

  @override
  State<Hadithcard> createState() => _HadithcardState();
}

class _HadithcardState extends State<Hadithcard> {
  HadithContent? hadithContent;
  @override
  void initState() {
    super.initState();
    loadHadithFile(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: AppColor.mainColor,
        child: Stack(
          alignment: Alignment(0, 0),
          children: [
            Image(
              image: AssetImage(Appassets.hadithCardBg),
              height: size.height * .6,
              width: size.width * .6,
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Image(image: AssetImage(Appassets.hadithBranding))),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: hadithContent == null
                  ? CircularProgressIndicator(
                      color: AppColor.blackColor,
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image(
                              image: AssetImage(Appassets.hadithDecorLeft),
                              width: 80,
                              height: 80,
                            ),
                            Expanded(
                              child: Text(
                                textAlign: TextAlign.center,
                                hadithContent!.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: AppColor.blackColor,
                                        fontWeight: FontWeight.w700),
                              ),
                            ),
                            Image(
                              image: AssetImage(Appassets.hadithDecorRight),
                              width: 80,
                              height: 80,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * .03,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                hadithContent!.content,
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                        color: AppColor.blackColor,
                                        fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 82,
                        )
                      ],
                    ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> loadHadithFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/Hadeeth/h$index.txt');
    String title = fileContent.substring(0, fileContent.indexOf('\n'));
    String content = fileContent.substring(fileContent.indexOf('\n') + 1);
    hadithContent = HadithContent(title: title, content: content);
    setState(() {});
  }
}
