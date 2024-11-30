import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_size.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';

class widgetDataAmount extends StatelessWidget {
  final String dataAmount;
  final String price;
  final String timeHour;
  final String timeDay;
  final VoidCallback onTap;
  const widgetDataAmount({
    super.key,
    required this.dataAmount,
    required this.price,
    required this.timeHour,
    required this.timeDay, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppDimensions.small,
        ),
        color: AppColors.primaryColor6,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppDimensions.big,
          horizontal: AppDimensions.big,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$dataAmount MB Daily Plan',
                  style: AppTextStyle.headingFiveMedium.copyWith(
                    color: AppColors.whiteColor50,
                  ),
                ),
                Text(
                  'Get $dataAmount MB daily plan for $price. Valid for $timeHour Hrs',
                  style: AppTextStyle.headingSixRegular.copyWith(
                    color: AppColors.whiteColor50,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppDimensions.tiny,
            ),
            const Divider(
              color: AppColors.whiteColor50,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_outlined,
                          size: AppDimensions.medium,
                          color: AppColors.whiteColor50,
                        ),
                        const SizedBox(
                          width: AppDimensions.tiny,
                        ),
                        Text(
                          'Validity',
                          style: AppTextStyle.headingSixRegular.copyWith(
                              color: AppColors.whiteColor50,
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: AppDimensions.tiny,
                    ),
                    Text(
                      '$timeDay day',
                      style: AppTextStyle.headingFiveMedium
                          .copyWith(color: AppColors.whiteColor50),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.account_balance_wallet_outlined,
                          size: AppDimensions.medium,
                          color: AppColors.whiteColor50,
                        ),
                        const SizedBox(
                          width: AppDimensions.tiny,
                        ),
                        Text(
                          'Price',
                          style: AppTextStyle.headingSixRegular.copyWith(
                              color: AppColors.whiteColor50,
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w200),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: AppDimensions.tiny,
                    ),
                    Text(
                      'N 30',
                      style: AppTextStyle.headingFiveBold
                          .copyWith(color: AppColors.whiteColor50),
                    )
                  ],
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.whiteColor50),
                        borderRadius: BorderRadius.circular(
                          AppDimensions.small,
                        ),
                        color: Colors.transparent),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppDimensions.tiny,
                        horizontal: AppDimensions.big,
                      ),
                      child: Text(
                        'Buy now',
                        style: AppTextStyle.headingSixMedium.copyWith(
                          color: AppColors.whiteColor50,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
