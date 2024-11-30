import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/features/buy_airtime/view/review_order.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_button.dart';
import '../../../utils/app_textfield.dart';
import '../widgets/airtime_amount_widget.dart';

class BuyAirtimeScreen extends StatefulWidget {
  const BuyAirtimeScreen({super.key});

  @override
  State<BuyAirtimeScreen> createState() => _BuyAirtimeScreenState();
}

class _BuyAirtimeScreenState extends State<BuyAirtimeScreen> {
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
          "Airtime",
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
              const AppTextField(
                suffixIcon: Icon(
                  Icons.local_phone_outlined,
                  color: AppColors.secondaryGreyColor8,
                ),
                hintText: 'Enter Phone Number',
                labelText: 'Phone Number',
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
                labelText: 'Select Network Provider',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const SizedBox(height: AppDimensions.medium),
              Row(
                children: [
                  Text(
                    "Save As beneficiary",
                    style: AppTextStyle.headingSixMedium.copyWith(
                      color: AppColors.primaryColor6,
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    activeColor: AppColors.primaryColor6,
                    checkColor: AppColors.whiteColor100,
                    tristate: false,
                    value: value,
                    onChanged: (bool? newValue) {
                      setState(() {
                        value = newValue;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: AppDimensions.big),
              const AppTextField(
                hintText: 'N1,000,000',
                labelText: 'Amount',
                buttonFillColor: AppColors.whiteColor500,
                enabledBorderColor: AppColors.primaryColor4,
              ),
              const SizedBox(height: AppDimensions.big),
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      widgetAirtimeAmount(airtimeAmount: 'N50'),
                      widgetAirtimeAmount(airtimeAmount: 'N100'),
                      widgetAirtimeAmount(airtimeAmount: 'N200'),
                      widgetAirtimeAmount(airtimeAmount: 'N500'),
                    ],
                  ),
                  SizedBox(height: AppDimensions.small),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      widgetAirtimeAmount(airtimeAmount: 'N1000'),
                      widgetAirtimeAmount(airtimeAmount: 'N2000'),
                      widgetAirtimeAmount(airtimeAmount: 'N5000'),
                      widgetAirtimeAmount(airtimeAmount: 'N10000'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: AppDimensions.large),
              const SizedBox(height: AppDimensions.large),
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
                  label: 'Continue',
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
