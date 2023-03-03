
import 'package:dietosure/src/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static final colors=AppColor();
  static ThemeData define(){
    return ThemeData(
      primaryColor: const Color(0XFFF3F8FE),
      focusColor: const Color(0XFFFFFFFF),
      scaffoldBackgroundColor: const Color(0XFFF3F8FE),
    );
  }
}