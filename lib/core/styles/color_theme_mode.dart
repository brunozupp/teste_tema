import 'package:flutter/material.dart';

class ColorThemeMode {

  final Color light;
  final Color dark;

  const ColorThemeMode({
    required this.light,
    required this.dark,
  });

  const ColorThemeMode.sameTheme({
    required Color color,
  }) : 
    light = color,
    dark = color;

  Color getColor(ThemeMode mode) {
    if(mode == ThemeMode.dark) {
      return dark;
    }

    return light;
  }
}
