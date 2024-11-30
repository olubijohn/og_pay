import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/features/cable_subscription/view/review_order.dart';

import '../../../const/app_assets.dart';
import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';

class CableCheckOutScreen extends StatefulWidget {
  const CableCheckOutScreen({super.key});

  @override
  State<CableCheckOutScreen> createState() => _CableCheckOutScreenState();
}

class _CableCheckOutScreenState extends State<CableCheckOutScreen> {
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
          "Check Out",
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
              bottom: AppSize.safeBlockHorizontal! * 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: AppDimensions.medium),
              SizedBox(
                width: 120.w,
                height: 120.h,
                child: Image.asset(
                  AppAssets.showMaxLogo,
                ),
              ),
              Text(
                "Showmax\nSubscription",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor8,
                ),
              ),
              const SizedBox(height: AppDimensions.large),
              const SizedBox(height: AppDimensions.large),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Account Name',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'Michael Onoja',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone Number',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        '8106285443',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Package',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'Ent/Month',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Amount',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'N4,000',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ConfirmCablePaymentScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Pay N4,000',
                  isLoading: false,
                  borderColor: AppColors.primaryColor5,
                ),
              ),
              SizedBox(height: AppSize.screenHeight! * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
