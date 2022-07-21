import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  AppStyles._();

  static const notoSans = 'Noto Sans';

  static const lbSearch = TextStyle(
    color: AppColors.richBlack,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 1.1634,
    fontFamily: notoSans,
  );
  static const lbSortEnable = TextStyle(
    color: AppColors.royalBlueDark,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 1.1498,
    fontFamily: notoSans,
  );
  static const lbSortDisable = TextStyle(
    color: AppColors.spanishGray,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 1.1498,
    fontFamily: notoSans,
  );
  static const name = TextStyle(
    color: AppColors.richBlack,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.1634,
    fontFamily: notoSans,
  );
  static const body1 = TextStyle(
    color: AppColors.jet,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static const body2 = TextStyle(
    color: AppColors.spanishGray,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static const age = TextStyle(
    color: AppColors.spanishGray,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static const bio = TextStyle(
    color: AppColors.jet,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static const lbBotNav = TextStyle(
    color: AppColors.royalBlueDark,
    fontSize: 6,
    fontWeight: FontWeight.w700,
    height: 1.0817,
    fontFamily: notoSans,
  );
}
