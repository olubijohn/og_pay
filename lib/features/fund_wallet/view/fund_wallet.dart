import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_assets.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_textfield.dart';
import '../../buy_airtime/view/review_order.dart';

class FundWalletScreen extends StatelessWidget {
  const FundWalletScreen({super.key});

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
          "Fund Wallet",
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppDimensions.small,
                  ),
                  color: AppColors.primaryColor2,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.small),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fund tips",
                        style: AppTextStyle.headingFiveSemiBold.copyWith(
                          color: AppColors.secondaryGreyColor10,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Transfer to any of the account number\nto fund your wallet.",
                            textAlign: TextAlign.left,
                            style: AppTextStyle.headingSixRegular.copyWith(
                              color: AppColors.secondaryGreyColor8,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 35.w,
                            height: 35.h,
                            child: Image.asset(AppAssets.notificationImage),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppDimensions.big,
              ),
              const AppTextField(
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.secondaryGreyColor8,
                ),
                hintText: 'Enter your Email',
                labelText: 'Email',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const SizedBox(height: AppDimensions.medium),
              const AppTextField(
                hintText: 'N1,000,000',
                labelText: 'Amount',
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
                        builder: (context) => const ReviewOrderScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Done',
                  isLoading: false,
                  borderColor: AppColors.primaryColor5,
                ),
              ),
              const SizedBox(
                height: AppDimensions.medium,
              ),
              SizedBox(
                width: double.infinity,
                child: AppElevatedButton(
                  textColor: AppColors.primaryColor5,
                  onPressed: () {},
                  buttonColor: AppColors.whiteColor500,
                  label: 'Pay another bill',
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
