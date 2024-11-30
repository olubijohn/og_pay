import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';

class widgetAirtimeAmount extends StatelessWidget {
  final String? airtimeAmount;
  const widgetAirtimeAmount({
    super.key, required this.airtimeAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        color: AppColors.warningColor50,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.medium,
          horizontal: AppDimensions.big,
        ),
        child: Text(
          airtimeAmount!,
          style: AppTextStyle.headingSixMedium.copyWith(
            color: AppColors.secondaryGreyColor8,
          ),
        ),
      ),
    );
  }
}