import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppShadow {
  static final boxShadow = [
    const BoxShadow(
      color: AppColors.shadowColor,
      blurRadius: 5,
      offset: Offset(0, 0),
    ),
  ];

  static final boxShadowBottomBar = [
    const BoxShadow(
      color: AppColors.navigationBoxShadow,
      spreadRadius: 1,
      blurRadius: 6,
      offset: Offset(0, -4),
    ),
  ];

  static final bottomButtonShadow = [
    const BoxShadow(
      color: AppColors.shadowColor,
      blurRadius: 5,
      offset: Offset(0, -5),
    ),
  ];
}