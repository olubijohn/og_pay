import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/features/electricity/view/review_order.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';
import '../widgets/meter_details_card.dart';

class ReviewElectricityScreen extends StatefulWidget {
  const ReviewElectricityScreen({super.key});

  @override
  State<ReviewElectricityScreen> createState() =>
      _ReviewElectricityScreenState();
}

class _ReviewElectricityScreenState extends State<ReviewElectricityScreen> {
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
          "Electricity",
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
              WidgetMeterDetails(
                meterNumber: '123456789546',
                paidType: 'Prepaid',
                meterName: 'MICHEAL ONOJA',
                meterAddress: '3 rabat street, Wuse Zone 6 Abuja',
              ),
              const SizedBox(height: AppDimensions.large),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Electricity Amount',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'N1,000,000',
                        style: AppTextStyle.headingFiveBold
                            .copyWith(color: AppColors.secondaryGreyColor10),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Service Charge',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'N1,000',
                        style: AppTextStyle.headingFiveBold
                            .copyWith(color: AppColors.secondaryGreyColor10),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppDimensions.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: AppTextStyle.headingFiveRegular
                            .copyWith(color: AppColors.secondaryGreyColor8),
                      ),
                      Text(
                        'N1,001,000',
                        style: AppTextStyle.headingFiveBold
                            .copyWith(color: AppColors.secondaryGreyColor10),
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
                        builder: (context) =>
                            const ReviewAndConfirmElectricityScreen(),
                      ),
                    );
                  },
                  buttonColor: AppColors.primaryColor5,
                  label: 'Confirm',
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
