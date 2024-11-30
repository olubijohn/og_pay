import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const/app_assets.dart';
import '../../../../const/app_colors.dart';
import '../../../../const/app_dimensions.dart';
import '../../../../const/app_size.dart';
import '../../../../const/app_textstyle.dart';
import '../../../../global/status_bar.dart';
import '../../../../utils/app_button.dart';
import '../../../../utils/app_textfield.dart';
import '../../../dashboard/view/dashboard.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

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
          "Log In",
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
              const SizedBox(height: AppDimensions.large),
              Text(
                "Hello, Michael",
                style: AppTextStyle.headingFourBold.copyWith(
                  color: AppColors.secondaryGreyColor10,
                ),
              ),
              const SizedBox(
                height: AppDimensions.zero,
              ),
              Text(
                "Please log in to continue",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              // OTP Input Fields

              const AppTextField(
                hintText: 'Email@example.com',
                labelText: 'Username',
                buttonFillColor: AppColors.secondaryGreyColor2,
                enabledBorderColor: Colors.transparent,
              ),
              const SizedBox(height: AppDimensions.medium),
              const AppTextField(
                hintText: 'whdckscksd',
                labelText: 'Password',
                buttonFillColor: AppColors.secondaryGreyColor2,
                enabledBorderColor: Colors.transparent,
              ),
              const SizedBox(
                height: AppDimensions.big,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an Account? ",
                    style: AppTextStyle.headingSixMedium.copyWith(
                      color: AppColors.secondaryGreyColor5,
                    ),
                    children: [
                      TextSpan(
                        text: "Create Account",
                        style: AppTextStyle.headingSixSemiBold.copyWith(
                          color: AppColors.primaryColor5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              SizedBox(
                width: 80.w,
                height: 80.h,
                child: Image.asset(
                  AppAssets.fingerprintImage,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Log in',
                  isLoading: false,
                  borderColor: AppColors.primaryColor5,
                ),
              ),

              SizedBox(height: AppSize.screenHeight! * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
