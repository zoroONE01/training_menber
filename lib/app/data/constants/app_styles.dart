import 'package:flutter/material.dart';

import 'constants.dart';

class AppStyles {
  AppStyles._();

  static const notoSans = 'Noto Sans';

  static final TextStyle lbSearch = TextStyle(
    color: Constants.colors.richBlack,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    height: 1.1634,
    fontFamily: notoSans,
  );
  static final TextStyle lbSortEnable = TextStyle(
    color: Constants.colors.cultured1,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 1.1498,
    fontFamily: notoSans,
  );
  static final TextStyle lbSortDisable = TextStyle(
    color: Constants.colors.spanishGray,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 1.1498,
    fontFamily: notoSans,
  );
  static final TextStyle name = TextStyle(
    color: Constants.colors.richBlack,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.1634,
    fontFamily: notoSans,
  );
  static final TextStyle body1 = TextStyle(
    color: Constants.colors.jet,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static final TextStyle body2 = TextStyle(
    color: Constants.colors.spanishGray,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static final TextStyle age = TextStyle(
    color: Constants.colors.spanishGray,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static final TextStyle bio = TextStyle(
    color: Constants.colors.jet,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    height: 1.1362,
    fontFamily: notoSans,
  );
  static final TextStyle lbBotNav = TextStyle(
    color: Constants.colors.royalBlueDark,
    fontSize: 6,
    fontWeight: FontWeight.w700,
    height: 1.0817,
    fontFamily: notoSans,
  );
}
