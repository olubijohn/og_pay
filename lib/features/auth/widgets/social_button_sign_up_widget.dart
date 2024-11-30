
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_colors.dart';
import 'package:og_pay/const/app_dimensions.dart';

Widget widgetSocialButton(String iconPath) {
  return ElevatedButton.icon(
    onPressed: () {},
    icon: Image.asset(iconPath, width: 20.0.w, height: 20.0.h),
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.whiteColor50,
      side: const BorderSide(color: AppColors.secondaryGreyColor7),
      padding: const EdgeInsets.all(AppDimensions.big),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    label: const Text(''),
  );
}
