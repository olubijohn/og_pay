import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_textfield.dart';
import 'cable_checkout.dart';

class CableSubscriptionScreen extends StatefulWidget {
  const CableSubscriptionScreen({super.key});

  @override
  State<CableSubscriptionScreen> createState() =>
      _CableSubscriptionScreenState();
}

class _CableSubscriptionScreenState extends State<CableSubscriptionScreen> {
  bool? value = false;
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
          "TV Subscription",
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
              AppTextField(
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 18.sp,
                  color: AppColors.secondaryGreyColor8,
                ),
                hintText: 'Select',
                labelText: 'Select Provider',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const SizedBox(height: AppDimensions.medium),
              AppTextField(
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 18.sp,
                  color: AppColors.secondaryGreyColor8,
                ),
                hintText: 'Select',
                labelText: 'Select Package',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const SizedBox(height: AppDimensions.medium),
              AppTextField(
                suffixIcon: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 18.sp,
                  color: AppColors.secondaryGreyColor8,
                ),
                hintText: 'Select',
                labelText: 'Select Provider',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CableCheckOutScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Review Order',
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
