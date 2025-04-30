import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamy_app/core/utils/AppColors.dart';
import 'package:islamy_app/core/utils/Appassets.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.controller,this.onChanged,this.suffix});
  final TextEditingController? controller;
 final  void Function(String)? onChanged;
 final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        
        onChanged: onChanged,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: AppColor.offWhiteColor),
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          suffix: suffix,
          hintText: 'Sura Name',
          hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: AppColor.offWhiteColor.withValues(alpha: .7)),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Appassets.quranIcon,
              colorFilter:
                  ColorFilter.mode(AppColor.mainColor, BlendMode.srcIn),
            ),
          ),
          filled: true,
          fillColor: AppColor.blackColor.withValues(alpha: .7),
        ),
      ),
    );
  }
}
