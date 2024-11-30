
import 'package:flutter/material.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';

class HomeTransactionCardWidget extends StatelessWidget {
  const HomeTransactionCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        color: AppColors.primaryColor1,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppDimensions.medium,
            horizontal: AppDimensions.small),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.primaryColor4,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(
                  AppDimensions.tiny,
                ),
                color: Colors.transparent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(AppDimensions.small),
                child: Icon(
                  Icons.phone_outlined,
                  color: AppColors.errorColor500,
                ),
              ),
            ),
            const SizedBox(
              width: AppDimensions.small,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Airtime",
                  style: AppTextStyle.headingSixMedium.copyWith(
                    color: AppColors.secondaryGreyColor10,
                  ),
                ),
                Text(
                  "Monday 2:00 AM",
                  style: AppTextStyle.headingSixRegular.copyWith(
                    color: AppColors.secondaryGreyColor7,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "-N10,000",
                    style: AppTextStyle.headingSixMedium.copyWith(
                      color: AppColors.secondaryGreyColor10,
                    ),
                  ),
                  Text(
                    "Monday 2:00 AM",
                    style: AppTextStyle.headingSixRegular.copyWith(
                      color: AppColors.secondaryGreyColor7,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}