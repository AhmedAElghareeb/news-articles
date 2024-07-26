import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  platform: TargetPlatform.iOS,
  appBarTheme: AppBarTheme(
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 18.sp,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    )
  ),
);