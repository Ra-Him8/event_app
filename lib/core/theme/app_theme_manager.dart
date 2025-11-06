import 'package:event2/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

abstract class AppThemeManager{

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: ColorPallete.primary,
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: ColorPallete.primary,
  );
}