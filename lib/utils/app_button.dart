import 'package:flutter/material.dart';
import 'package:og_pay/const/app_dimensions.dart';
import 'package:og_pay/const/app_textstyle.dart';

import '../const/app_colors.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final bool isLoading;
  final Color? textColor;
  final Color? buttonColor;
  final Color borderColor;
  const AppElevatedButton(
      {super.key,
      this.onPressed,
      required this.label,
      required this.isLoading,
      this.buttonColor,
      required this.borderColor,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor),
        side: WidgetStateProperty.all(
          BorderSide(color: borderColor),
        ),
        foregroundColor: WidgetStateProperty.all(AppColors.whiteColor500),
        overlayColor: WidgetStateProperty.all(AppColors.whiteColor500),
        fixedSize: WidgetStateProperty.all(
          const Size(375, 48),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.small * 1.5,
            ),
          ),
        ),
      ),
      child: isLoading
          ? const Text('Loading...')
          : Text(
              label,
              style:
              AppTextStyle.headingSixSemiBold.copyWith(color: textColor),
            ),
    );
  }
}
