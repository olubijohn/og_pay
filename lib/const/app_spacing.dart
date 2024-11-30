import 'package:flutter/material.dart';
import 'app_dimensions.dart';

class AppSpacing extends StatelessWidget {
  final double height;
  final double width;

  const AppSpacing.height(this.height) : width = AppDimensions.zero;

  const AppSpacing.tinyHeight() : this.height(AppDimensions.tiny);
  const AppSpacing.smallHeight() : this.height(AppDimensions.small);
  const AppSpacing.mediumHeight() : this.height(AppDimensions.medium);
  const AppSpacing.bigHeight() : this.height(AppDimensions.big);
  const AppSpacing.largeHeight() : this.height(AppDimensions.large);

  const AppSpacing.width(this.width) : height = AppDimensions.zero;

  const AppSpacing.tinyWidth() : this.width(AppDimensions.tiny);
  const AppSpacing.smallWidth() : this.width(AppDimensions.small);
  const AppSpacing.mediumWidth() : this.width(AppDimensions.medium);
  const AppSpacing.bigWidth() : this.width(AppDimensions.big);
  const AppSpacing.largeWidth() : this.width(AppDimensions.large);

  const AppSpacing.empty()
      : width = AppDimensions.zero,
        height = AppDimensions.zero;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, width: width);
  }
}