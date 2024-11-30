import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/features/buy_data/view/review_data_order.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../../utils/app_textfield.dart';
import '../widgets/data_amount_widget.dart';
import '../widgets/network_data_selection_widget.dart';

class BuyDataScreen extends StatefulWidget {
  const BuyDataScreen({super.key});

  @override
  State<BuyDataScreen> createState() => _BuyDataScreenState();
}

class _BuyDataScreenState extends State<BuyDataScreen> {
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
          "Data",
          style: AppTextStyle.headingFiveMedium.copyWith(
            color: AppColors.secondaryGreyColor10,
          ),
        ),
        centerTitle: true,
      ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: AppDimensions.medium),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    widgetDataNetwork(
                      textColor: AppColors.whiteColor50,
                      simNetwork: 'MTN',
                      selectionColor: AppColors.primaryColor6,
                    ),
                    widgetDataNetwork(
                      simNetwork: 'GLO',
                      selectionColor: AppColors.secondaryGreyColor3,
                    ),
                    widgetDataNetwork(
                      simNetwork: 'AIRTEL',
                      selectionColor: AppColors.secondaryGreyColor3,
                    ),
                    widgetDataNetwork(
                      simNetwork: '9MOBILE',
                      selectionColor: AppColors.secondaryGreyColor3,
                    ),
                  ],
                ),

                const SizedBox(height: AppDimensions.big),
                const AppTextField(
                  suffixIcon: Icon(
                    Icons.local_phone_outlined,
                    color: AppColors.secondaryGreyColor8,
                  ),
                  hintText: 'Enter Phone Number',
                  labelText: 'Phone Number',
                  buttonFillColor: AppColors.whiteColor500,
                  enabledBorderColor: AppColors.secondaryGreyColor3,
                ),
                const SizedBox(height: AppDimensions.large),
                const SizedBox(height: AppDimensions.medium),
                widgetDataAmount(
                  dataAmount: '100',
                  price: 'N30',
                  timeHour: '24',
                  timeDay: '1',
                  onTap: () {},
                ),
                const SizedBox(height: AppDimensions.small),
                widgetDataAmount(
                  dataAmount: '100',
                  price: 'N30',
                  timeHour: '24',
                  timeDay: '1',
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const ReviewDataOrderPaymentScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: AppDimensions.small),
                widgetDataAmount(
                  dataAmount: '300',
                  price: 'N100',
                  timeHour: '24',
                  timeDay: '7',
                  onTap: () {},
                ),
                const SizedBox(height: AppDimensions.small),
                widgetDataAmount(
                  dataAmount: '500',
                  price: 'N200',
                  timeHour: '24',
                  timeDay: '1',
                  onTap: () {},
                ),
                // Row(
                //   children: [
                //     Text(
                //       "Save As beneficiary",
                //       style: AppTextStyle.headingSixMedium.copyWith(
                //         color: AppColors.primaryColor6,
                //       ),
                //     ),
                //     const Spacer(),
                //     Checkbox(
                //       activeColor: AppColors.primaryColor6,
                //       checkColor: AppColors.whiteColor100,
                //       tristate: false,
                //       value: value,
                //       onChanged: (bool? newValue) {
                //         setState(() {
                //           value = newValue;
                //         });
                //       },
                //     ),
                //   ],
                // ),

                SizedBox(height: AppSize.screenHeight! * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
