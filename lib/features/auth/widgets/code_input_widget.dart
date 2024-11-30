import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_dimensions.dart';
import 'package:og_pay/const/app_textstyle.dart';

import '../../../const/app_colors.dart';

Widget widgetOTPBox() {
  return Container(
    width: 50.0.w,
    height: 50.0.h,
    decoration: BoxDecoration(
      color: AppColors.secondaryGreyColor3,
      borderRadius: BorderRadius.circular(AppDimensions.small),
    ),
    child: Center(
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: AppTextStyle.headingSixSemiBold,
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    ),
  );
}

