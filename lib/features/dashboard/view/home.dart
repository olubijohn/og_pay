import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:og_pay/const/app_assets.dart';
import 'package:og_pay/features/buy_airtime/view/buy_airtime.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_dimensions.dart';
import '../../../const/app_size.dart';
import '../../../const/app_textstyle.dart';
import '../../../global/status_bar.dart';
import '../../buy_data/view/buy_data.dart';
import '../../cable_subscription/view/tv_subscription.dart';
import '../../electricity/view/electricity.dart';
import '../../fund_wallet/widgets/home_card_function_widget.dart';
import '../../fund_wallet/widgets/home_card_widget.dart';
import '../widgets/home_transaction_history_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? value = false;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: Image.asset(
                        AppAssets.notificationImage,
                      ),
                    ),
                    const SizedBox(
                      width: AppDimensions.small,
                    ),
                    Text(
                      'Hi, Michael',
                      style: AppTextStyle.headingSixMedium
                          .copyWith(color: AppColors.secondaryGreyColor8),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 30.w,
                      height: 30.h,
                      child: Image.asset(
                        AppAssets.notificationImage,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppDimensions.medium),
                Container(),
                const WalletCard(),
                const SizedBox(height: AppDimensions.big),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeCardFunctionWidget(
                          imageName: AppAssets.phoneIcon,
                          functionName: 'Airtime',
                          tapFunction: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const BuyAirtimeScreen(),
                              ),
                            );
                          },
                        ),
                        HomeCardFunctionWidget(
                          imageName: AppAssets.dataIcon,
                          functionName: 'Data',
                          tapFunction: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const BuyDataScreen(),
                              ),
                            );
                          },
                        ),
                        HomeCardFunctionWidget(
                          imageName: AppAssets.cableIcon,
                          functionName: 'Cable',
                          tapFunction: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CableSubscriptionScreen(),
                              ),
                            );
                          },
                        ),
                        HomeCardFunctionWidget(
                          imageName: AppAssets.bettingIcon,
                          functionName: 'Betting',
                          tapFunction: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: AppDimensions.small),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeCardFunctionWidget(
                          imageName: AppAssets.airtime2CashIcon,
                          functionName: 'Airtime\nto cash',
                          tapFunction: () {},
                        ),
                        HomeCardFunctionWidget(
                          imageName: AppAssets.electricityIcon,
                          functionName: 'Electricity',
                          tapFunction: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BuyElectricityScreen(),
                              ),
                            );
                          },
                        ),
                        HomeCardFunctionWidget(
                          imageName: AppAssets.moreIcon,
                          functionName: 'More',
                          tapFunction: () {},
                        ),
                        Container(
                          width: 55.w,
                          height: 55.h,
                          color: Colors.transparent,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: AppDimensions.big),
                const Column(
                  children: [
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                    SizedBox(height: AppDimensions.small),
                    HomeTransactionCardWidget(),
                  ],
                ),
                SizedBox(height: AppSize.screenHeight! * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
