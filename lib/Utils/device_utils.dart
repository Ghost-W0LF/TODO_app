import 'package:flutter/material.dart';

class TDeviceUtils {
  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static getBottomNavigationBarHeight(BuildContext context) {
    return kBottomNavigationBarHeight;
  }

  static double getScteenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getAppBarHeight() {
    return kToolbarHeight;
  }
}
