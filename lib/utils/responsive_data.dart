import 'package:flutter/material.dart';

class ResponsiveData {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 828; //default width
  static double screenHeight = 1792; //default height

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.width;
  }
}
