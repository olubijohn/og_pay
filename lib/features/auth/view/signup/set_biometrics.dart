import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_assets.dart';
import 'package:og_pay/features/auth/view/signup/stay_updated.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_dimensions.dart';
import '../../../../const/app_size.dart';
import '../../../../const/app_textstyle.dart';
import '../../../../global/status_bar.dart';
import '../../../../utils/app_button.dart';
import '../login/login.dart';

class SetBiometricsScreen extends StatelessWidget {
  const SetBiometricsScreen({super.key});

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
          "Set Biometrics",
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
                height: AppDimensions.large,
              ),
              Text(
                "Set Biometrics",
                style: AppTextStyle.headingFourBold.copyWith(
                  color: AppColors.secondaryGreyColor10,
                ),
              ),
              const SizedBox(
                height: AppDimensions.zero,
              ),
              Text(
                "Protect your account with biometrics. Set up facial\nrecognition or fingerprint authentication for\nfaster and more secure access to your account.",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              const SizedBox(
                height: AppDimensions.big,
              ),
              SizedBox(
                width: 150.w,
                height: 150.h,
                child: Image.asset(
                  AppAssets.fingerprintImage,
                ),
              ),
              const Spacer(),
              const SizedBox(
                height: AppDimensions.big,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: AppElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
                          ),
                        );
                      },
                      buttonColor: AppColors.primaryColor2,
                      label: 'Skip',
                      textColor: AppColors.secondaryGreyColor10,
                      isLoading: false,
                      borderColor: Colors.transparent,
                    ),
                  ),
                  const SizedBox(width: AppDimensions.small),
                  Expanded(
                    child: AppElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StayUpdatedScreen(),
                          ),
                        );
                      },
                      buttonColor: AppColors.primaryColor5,
                      label: 'Continue',
                      isLoading: false,
                      borderColor: AppColors.primaryColor5,
                    ),
                  ),
                ],
              ),
              SizedBox(height: AppSize.screenHeight! * 0.23),
            ],
          ),
        ),
      ),
    );
  }
}
