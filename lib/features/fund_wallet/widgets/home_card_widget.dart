import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../view/fund_wallet.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: AppSize.screenHeight! * 0.22,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  AppColors.primaryColor5,
                  AppColors.primaryColor6,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 30.h,
            child: Text(
              'N10,000,000',
              style: AppTextStyle.headingOneBold.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            bottom: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Withdraw',
                  style: AppTextStyle.headingSixRegular.copyWith(
                    color: AppColors.whiteColor50,
                  ),
                ),
                const SizedBox(
                  width: AppDimensions.small,
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: AppColors.whiteColor50,
                  size: 16,
                ),
              ],
            ),
          ),

          // Add Money Button
          Positioned(
            bottom: -1,
            right: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.whiteColor50,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    AppDimensions.small,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: AppDimensions.small,
                  top: AppDimensions.small,
                ),
                child: SizedBox(
                  height: 40.h,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FundWalletScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      color: AppColors.whiteColor50,
                    ),
                    label: Text(
                      'Add Money',
                      style: AppTextStyle.headingSixRegular
                          .copyWith(color: AppColors.whiteColor50),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor8, // Button color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(AppDimensions.small),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Eye Icon in the top-right corner
          Positioned(
            top: 12.h,
            right: 20.w,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppDimensions.small,
                ),
                color: AppColors.whiteColor50.withOpacity(
                  0.15,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(AppDimensions.tiny),
                child: Icon(
                  size: AppDimensions.medium,
                  Icons.visibility,
                  color: AppColors.whiteColor50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
