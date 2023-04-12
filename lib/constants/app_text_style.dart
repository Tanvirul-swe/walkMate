import 'package:flutter/material.dart';
import 'package:walk_mate/constants/app_color.dart';

class AppTextStyle {
  static const TextStyle largeheadingStyle = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: AppColors.deepBlackColor,
  );
  static const TextStyle smallheadingStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle contentStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static const TextStyle title = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static const TextStyle buttonStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle appbarStyle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color:AppColors.primaryColor,
  );
}
