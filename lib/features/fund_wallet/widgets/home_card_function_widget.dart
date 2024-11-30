import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';

class HomeCardFunctionWidget extends StatelessWidget {
  final String imageName;
  final VoidCallback tapFunction;
  final String functionName;
  const HomeCardFunctionWidget({
    super.key,
    required this.imageName,
    required this.functionName, required this.tapFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: tapFunction,
          child: Container(
            width: 55.w,
            height: 55.h,
            decoration: const BoxDecoration(
              color: AppColors.secondaryGreyColor1,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              imageName,
              color: AppColors.primaryColor6,
            ),
          ),
        ),
        const SizedBox(
          height: AppDimensions.small,
        ),
        Text(
          functionName,
          style: AppTextStyle.headingSixRegular
              .copyWith(color: AppColors.secondaryGreyColor6),
        ),
      ],
    );
  }
}
