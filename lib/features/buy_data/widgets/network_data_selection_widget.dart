import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';

class widgetDataNetwork extends StatelessWidget {
  final String? simNetwork;
  final Color selectionColor;
  final Color? textColor;
  const widgetDataNetwork({
    super.key, required this.simNetwork, required this.selectionColor,  this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        color: selectionColor    ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.medium,
          horizontal: AppDimensions.big,
        ),
        child: Text(
          simNetwork!,
          style: AppTextStyle.headingSixMedium.copyWith(
            color: textColor ?? AppColors.secondaryGreyColor8,
          ),
        ),
      ),
    );
  }
}