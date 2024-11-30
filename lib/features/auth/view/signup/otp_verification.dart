import 'package:flutter/material.dart';
import 'package:og_pay/const/app_dimensions.dart';
import 'package:og_pay/const/app_size.dart';
import 'package:og_pay/const/app_textstyle.dart';
import 'package:og_pay/features/auth/view/signup/security_pin.dart';
import 'package:og_pay/features/auth/widgets/code_input_widget.dart';
import 'package:og_pay/utils/app_button.dart';

import '../../../../const/app_colors.dart';
import '../../../../global/status_bar.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

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
          "OTP Verification",
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
                "OTP Verification",
                style: AppTextStyle.headingFourBold.copyWith(
                  color: AppColors.secondaryGreyColor10,
                ),
              ),
              const SizedBox(
                height: AppDimensions.zero,
              ),
              Text(
                "A 5 digit code has been sent to your email address",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),
              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  return widgetOTPBox();
                }),
              ),
              const SizedBox(height: AppDimensions.large),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend Code",
                  style: TextStyle(color: AppColors.secondaryGreyColor10),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SecurityPinScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Continue',
                  isLoading: false,
                  borderColor: AppColors.primaryColor5,
                ),
              ),

              SizedBox(height: AppSize.screenHeight! * 0.23),
            ],
          ),
        ),
      ),
    );
  }
}
