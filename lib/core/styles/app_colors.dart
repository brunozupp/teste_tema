import 'package:flutter/material.dart';
import 'package:teste_tema/core/styles/color_theme_mode.dart';

class AppColors {

  AppColors._();

  static const primaryColor = ColorThemeMode(
    light: Colors.grey, 
    dark: Colors.blue,
  );

  static const backgroundColor = ColorThemeMode(
    light: Color(0xFF87bbde), 
    dark: Color(0xFFd7dde0),
  );

  static const titleTextColor = ColorThemeMode.sameTheme(
    color: Color(0xFF006bd6)
  );

  static const bodyTextColor = ColorThemeMode.sameTheme(
    color: Color(0xFF414345)
  );
}