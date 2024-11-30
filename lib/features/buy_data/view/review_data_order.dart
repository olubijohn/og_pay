import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_size.dart';
import 'package:og_pay/features/buy_data/view/review_order.dart';

import '../../../const/app_assets.dart';
import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';
import '../widgets/data_code_widget.dart';

class ReviewDataOrderPaymentScreen extends StatelessWidget {
  const ReviewDataOrderPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    StatusColor.changeStatusColor(AppColors.whiteColor500);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.secondaryGreyColor10,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Review Order",
          style: AppTextStyle.headingFiveMedium.copyWith(
            color: AppColors.secondaryGreyColor10,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.whiteColor500,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            top: AppSize.safeBlockVertical! * 4,
            left: AppSize.safeBlockHorizontal! * 7,
            right: AppSize.safeBlockHorizontal! * 7,
            bottom: AppSize.safeBlockHorizontal! * 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: AppDimensions.big,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimensions.large),
                ),
                width: 100.w,
                height: 100.h,
                child: Image.asset(
                  AppAssets.mtnLogo,
                ),
              ),
              const SizedBox(
                height: AppDimensions.small,
              ),
              Text(
                "MTN Data Subscription",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              Container(
                height: AppSize.safeBlockVertical! * 35,
                width: AppSize.screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimensions.medium),
                  color: AppColors.secondaryGreyColor1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.large),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DataCodeWidget(),
                            DataCodeWidget(),
                            DataCodeWidget(),
                            DataCodeWidget(),
                            DataCodeWidget(),
                            DataCodeWidget(),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const DataCodeWidget(),
                            const DataCodeWidget(),
                            const DataCodeWidget(),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.successColor500,
                                borderRadius:
                                    BorderRadius.circular(AppDimensions.big),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: AppDimensions.small,
                                  horizontal: AppDimensions.big),
                              child: const DataCodeWidget(
                                textColor: AppColors.whiteColor50,
                              ),
                            ),
                            const DataCodeWidget(),
                            const DataCodeWidget(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              AppElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ReviewDataOrderScreen(),
                    ),
                  );
                },
                buttonColor: AppColors.primaryColor5,
                label: 'Pay and Continue Now',
                isLoading: false,
                borderColor: AppColors.primaryColor5,
              ),
              SizedBox(height: AppSize.screenHeight! * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
