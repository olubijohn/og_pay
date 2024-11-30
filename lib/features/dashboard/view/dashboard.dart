





import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:og_pay/const/app_colors.dart';
import 'package:og_pay/const/app_size.dart';
import 'package:og_pay/features/dashboard/controllers/dashboard_controller.dart';
import 'package:og_pay/features/dashboard/view/home.dart';
import 'package:og_pay/global/status_bar.dart';

import '../../../const/app_assets.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final dashboardController = Get.put(DashboardController());

  late final _screens = [
    const HomeScreen(),
     const Center(
      child: Text('Services'),
    ),
    const Center(
      child: Text('History'),
    ),
    const Center(
      child: Text('Profile'),
    ),
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    StatusColor.changeStatusColor(AppColors.whiteColor500);
    return Obx(
          () => Scaffold(
          //drawerScrimColor: AppColors.primaryColor2,
          key: _scaffoldKey,
           backgroundColor: Colors.white,
          //drawer: NavDrawer(),
          body: IndexedStack(
            index: dashboardController.index.value,
            children: _screens,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: dashboardController.index.value == 0
                  ? AppColors.primaryColor5
                  : AppColors.whiteColor50,
            ),
            child: BottomNavigationBar(
              elevation: 0,
              landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
              selectedItemColor: dashboardController.index.value == 0
                  ? AppColors.whiteColor50
                  : AppColors.primaryColor5,
              // unselectedItemColor: dashboardController.index.value == 0
              //     ? AppColors.whiteColor50
              //     : AppColors.primaryColor5,
              currentIndex: dashboardController.index.value,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              onTap: dashboardController.onTap,
              items: [
                BottomNavigationBarItem(
                  icon: _getBottomNavBarItem(index: 0, url: AppAssets.homeIcon),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: _getBottomNavBarItem(index: 1, url: AppAssets.barIcon),
                  label: "Payment",
                ),
                BottomNavigationBarItem(
                  icon: _getBottomNavBarItem(index: 2, url: AppAssets.historyIcon),
                  label: "History",
                ),
                BottomNavigationBarItem(
                  icon: _getBottomNavBarItem(
                      index: 3, url: AppAssets.userIcon),
                  label: "Profile",
                ),

              ],
            ),
          ),
        ),
        // borderRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(24.0),
        //   topRight: Radius.circular(24.0),
        // ),
    );
  }

  Widget _getBottomNavBarItem({
    required int index,
    required String url,
  }) {
    return Column(
      children: [
        // dashboardController.index.value == index
        //     ? const CircleAvatar(
        //   radius: 3,
        //   backgroundColor: AppColors.whiteColor50,
        // )
        //     : const SizedBox(),
        // 3.verticalSpace,
        ImageIcon(
          AssetImage(url),
        )
      ],
    );
  }
}
