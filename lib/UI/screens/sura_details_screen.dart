import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/core/models/surah_info.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routename = '/SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  bool firstbuild = true;
  List<String> suracontent = [];
  late SurahInfo surahInfo;
  bool loading = false, error = false, success = false;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    surahInfo = ModalRoute.of(context)!.settings.arguments as SurahInfo;
    if (firstbuild) {
      loadSuraContent();
      firstbuild = false;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(surahInfo.enname),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(Appassets.suraDecorLeft),
                  width: 90,
                  height: 90,
                ),
                Text(
                  surahInfo.arname,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: AppColor.mainColor),
                ),
                Image(
                  image: AssetImage(Appassets.suraDecorRight),
                  width: 90,
                  height: 90,
                ),
              ],
            ),
            loading
                ? Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : success
                    ? Expanded(
                        child: SingleChildScrollView(
                          child: RichText(
                            textDirection: TextDirection.rtl,
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: AppColor.mainColor),
                              children: List.generate(
                                suracontent.length,
                                (index) => TextSpan(
                                    text:
                                        suracontent[index] + '[${index + 1}]'),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Expanded(
                        child: Column(children: [
                          Spacer(
                            flex: 1,
                          ),
                          Center(
                            child: Text(
                              errorText ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: AppColor.mainColor),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.mainColor),
                            onPressed: () => loadSuraContent(),
                            child: Text(
                              'try again',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: AppColor.blackColor),
                            ),
                          ),
                          Spacer(
                            flex: 2,
                          ),
                        ]),
                      ),
            Image(
              image: AssetImage(Appassets.quranBrandingImage),
            )
          ],
        ),
      ),
    );
  }

  Future<void> loadSuraContent() async {
    loading = true;
    setState(() {});
    try {
      await Future.delayed(
        Duration(seconds: 1),
      );
      String filecontent = await rootBundle
          .loadString('assets/files/Suras/${surahInfo.sura_count}.txt');
      success = true;
      loading = false;
      setState(() {});
      suracontent = filecontent.trim().split('\n');
    } catch (e) {
      errorText = e.toString();
      success = false;
      loading = false;
      error = true;
      setState(() {});
    }
  }
}
