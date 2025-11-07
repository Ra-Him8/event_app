import 'package:event2/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

abstract class AppThemeManager{

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: ColorPallete.primary,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorPallete.white,
        fontFamily: "Inter"

      ),
        bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorPallete.white,
        fontFamily: "Inter"

      )
    )
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: ColorPallete.primary,
  );
}