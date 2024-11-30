import 'package:flutter/material.dart';
import 'package:og_pay/const/app_colors.dart';
import 'package:og_pay/const/app_dimensions.dart';
import 'package:og_pay/const/app_spacing.dart';
import 'package:og_pay/const/app_textstyle.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final String labelText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final Color? buttonFillColor;
  final Color enabledBorderColor;

  const AppTextField(
      {super.key,
      this.controller,
      this.focusNode,
      this.textInputAction,
      this.onSubmitted,
      this.validator,
      this.prefixIcon,
      this.suffixIcon,
      required this.hintText,
      required this.labelText,
      this.obscureText = false,
      this.keyboardType,
      this.buttonFillColor, required this.enabledBorderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimensions.small),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppTextStyle.headingSixMedium
                .copyWith(color: AppColors.secondaryGreyColor9),
            textAlign: TextAlign.left,
          ),
          const AppSpacing.tinyHeight(),
          TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onFieldSubmitted: onSubmitted,
            focusNode: focusNode,
            textInputAction: textInputAction,
            validator: validator,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.small),
                borderSide: BorderSide(
                  color: Theme.of(context).focusColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: enabledBorderColor,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: AppColors.primaryColor5)),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                    color: AppColors.errorColor500,
                    width: AppDimensions.tiny * 0.5),
              ),
              hintStyle: AppTextStyle.headingSixRegular
                  .copyWith(color: Theme.of(context).hintColor),
              contentPadding: const EdgeInsets.only(
                  top: 24,
                  bottom: 16,
                  right: AppDimensions.big,
                  left: AppDimensions.big),
              fillColor: buttonFillColor,
              filled: true,
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              prefixIconConstraints: const BoxConstraints(
                minWidth: 64,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
