import 'package:flutter/material.dart';
import 'package:og_pay/features/auth/view/signup/select_avatar.dart';

import '../../../../const/app_colors.dart';
import '../../../../const/app_dimensions.dart';
import '../../../../const/app_size.dart';
import '../../../../const/app_textstyle.dart';
import '../../../../global/status_bar.dart';
import '../../../../utils/app_button.dart';
import '../../widgets/code_input_widget.dart';

class SecurityPinScreen extends StatelessWidget {
  const SecurityPinScreen({super.key});
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
          "Security Pin",
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
                "Create your security pin",
                style: AppTextStyle.headingFourBold.copyWith(
                  color: AppColors.secondaryGreyColor10,
                ),
              ),
              const SizedBox(
                height: AppDimensions.zero,
              ),
              Text(
                "This pin will be required to process your transactions.",
                textAlign: TextAlign.center,
                style: AppTextStyle.headingSixRegular.copyWith(
                  color: AppColors.secondaryGreyColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.large,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(4, (index) {
                  return widgetOTPBox();
                }),
              ),

              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>  const SelectAvatarScreen(),
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
