import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_assets.dart';
import 'package:og_pay/const/app_size.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';

class WidgetMeterDetails extends StatelessWidget {
  final String meterNumber;
  final String meterName;
  final String meterAddress;
  final String paidType;

  const WidgetMeterDetails({
    super.key,
    required this.paidType,
    required this.meterNumber,
    required this.meterName,
    required this.meterAddress,
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
          vertical: AppDimensions.large,
          horizontal: AppDimensions.big,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: AppSize.screenWidth! * 0.2,
                  height: AppSize.safeBlockVertical! * 3.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppDimensions.small),
                      color: AppColors.whiteColor50),
                  child: Image.asset(AppAssets.aedcLogo),
                ),
                Text(
                  meterNumber,
                  style: AppTextStyle.headingFourBold.copyWith(
                    color: AppColors.secondaryGreyColor10,
                  ),
                ),
                Text(
                  paidType,
                  style: AppTextStyle.headingFiveRegular.copyWith(
                    color: AppColors.primaryColor6,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppDimensions.small,
            ),
            const Divider(
              color: AppColors.primaryColor6,
              thickness: 1,
            ),
            const SizedBox(
              height: AppDimensions.large,
            ),
            Text(
              'Meter Name',
              style: AppTextStyle.headingFiveBold.copyWith(
                color: AppColors.secondaryGreyColor10,
              ),
            ),
            Text(
              meterName,
              style: AppTextStyle.headingSixRegular.copyWith(
                color: AppColors.secondaryGreyColor9,
              ),
            ),

            const Divider(
              color: AppColors.primaryColor6,
              thickness: 1,
            ),
            const SizedBox(
              height: AppDimensions.large,
            ),
            Text(
              'Address',
              style: AppTextStyle.headingFiveBold.copyWith(
                color: AppColors.secondaryGreyColor10,
              ),
            ),
            Text(
              meterAddress,
              style: AppTextStyle.headingSixRegular.copyWith(
                color: AppColors.secondaryGreyColor9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
