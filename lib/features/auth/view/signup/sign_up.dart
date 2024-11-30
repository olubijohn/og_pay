import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_assets.dart';
import 'package:og_pay/const/app_colors.dart';
import 'package:og_pay/const/app_dimensions.dart';
import 'package:og_pay/const/app_size.dart';
import 'package:og_pay/const/app_textstyle.dart';
import 'package:og_pay/features/auth/widgets/social_button_sign_up_widget.dart';
import 'package:og_pay/global/status_bar.dart';
import 'package:og_pay/utils/app_button.dart';
import 'package:og_pay/utils/app_textfield.dart';

import 'otp_verification.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    StatusColor.changeStatusColor(AppColors.whiteColor500);
    return Scaffold(
      backgroundColor: AppColors.whiteColor500,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: AppSize.safeBlockVertical! * 4,
                left: AppSize.safeBlockHorizontal! * 7,
                right: AppSize.safeBlockHorizontal! * 7,
                bottom: AppSize.safeBlockHorizontal! * 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: AppDimensions.large),
                Text(
                  "Hello Champ",
                  style: AppTextStyle.headingOneSemiBold.copyWith(
                    color: AppColors.secondaryGreyColor7,
                  ),
                ),
                const SizedBox(height: AppDimensions.zero),
                Text(
                  "Welcome onboard, Sign up to continue!",
                  style: AppTextStyle.headingSixRegular.copyWith(
                    color: AppColors.secondaryGreyColor5,
                  ),
                ),
                const SizedBox(
                  height: AppDimensions.big,
                ),
                const AppTextField(
                  hintText: 'Email@example.com',
                  labelText: 'Username',
                  buttonFillColor: AppColors.secondaryGreyColor2,
                  enabledBorderColor: Colors.transparent,
                ),
                const SizedBox(height: AppDimensions.medium),
                const AppTextField(
                  hintText: 'Email@example.com',
                  labelText: 'Email',
                  buttonFillColor: AppColors.secondaryGreyColor2,
                  enabledBorderColor: Colors.transparent,
                ),
                const SizedBox(height: AppDimensions.medium),
                const AppTextField(
                  hintText: 'Email@example.com',
                  labelText: 'Phone Number',
                  buttonFillColor: AppColors.secondaryGreyColor2,
                  enabledBorderColor: Colors.transparent,
                ),
                const SizedBox(height: AppDimensions.medium),
                const AppTextField(
                  hintText: 'Email@example.com',
                  labelText: 'Password',
                  buttonFillColor: AppColors.secondaryGreyColor2,
                  enabledBorderColor: Colors.transparent,
                ),
                const SizedBox(
                  height: AppDimensions.small,
                ),
                Text("Must be at least 8 characters.",
                    style: AppTextStyle.headingSixRegular
                        .copyWith(color: AppColors.secondaryGreyColor3)),
                const SizedBox(height: AppDimensions.large),
                const SizedBox(height: AppDimensions.large),
                SizedBox(
                  width: double.infinity,
                  child: AppElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OTPVerificationScreen(),
                        ),
                      );
                    },
                    buttonColor: AppColors.primaryColor5,
                    label: 'Sign Up',
                    isLoading: false,
                    borderColor: AppColors.primaryColor5,
                  ),
                ),
                const SizedBox(
                  height: AppDimensions.big,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.secondaryGreyColor7,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppDimensions.medium,
                      ),
                      child: Text("OR"),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.secondaryGreyColor7,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppDimensions.big,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: widgetSocialButton(
                        AppAssets.googleIcon,
                      ),
                    ),
                    const SizedBox(width: AppDimensions.small),
                    Expanded(
                      child: widgetSocialButton(
                        AppAssets.appleIcon,
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 32.0.h),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: AppTextStyle.headingSixMedium.copyWith(
                        color: AppColors.secondaryGreyColor5,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign in",
                          style: AppTextStyle.headingSixSemiBold.copyWith(
                            color: AppColors.primaryColor5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
