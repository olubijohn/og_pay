
import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_textstyle.dart';

class DataCodeWidget extends StatelessWidget {
  final Color? textColor;
  const DataCodeWidget({
    super.key,  this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '#1223834',
      style: AppTextStyle.headingFiveRegular.copyWith(
          color: textColor ?? AppColors.secondaryGreyColor5),
    );
  }
}
