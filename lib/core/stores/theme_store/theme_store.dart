import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teste_tema/core/styles/app_colors.dart';
part 'theme_store.g.dart';

class ThemeStore = _ThemeStoreBase with _$ThemeStore;

abstract class _ThemeStoreBase with Store {

  static const String _THEME_KEY = "THEME_KEY";
  
  @observable
  ThemeMode _themeMode = ThemeMode.light;

  @computed
  ThemeMode get themeMode => _themeMode;

  @computed
  bool get isLight => _themeMode == ThemeMode.light;

  @computed
  bool get isDark => _themeMode == ThemeMode.dark;

  @action
  Future<void> toggleTheme() async {
    if(_themeMode == ThemeMode.light) {
      await setThemeMode(ThemeMode.dark);
    } else {
      await setThemeMode(ThemeMode.light);
    }
  }

  @action
  Future<void> getThemeMode() async {

    final prefs = await SharedPreferences.getInstance();

    if(prefs.containsKey(_THEME_KEY)) {
      final result = prefs.getString(_THEME_KEY)!;

      final mode = ThemeMode.values.firstWhere((e) => e.name == result);

      _themeMode = mode;
    } else {
      await setThemeMode(ThemeMode.light);
    }
  }

  @action
  Future<void> setThemeMode(ThemeMode theme) async {

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_THEME_KEY, theme.name);

    _themeMode = theme;
  }

  @computed
  ThemeData get getThemeData => ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: isDark,
      backgroundColor: AppColors.backgroundColor.getColor(themeMode),
      actionsIconTheme: IconThemeData(
        color: AppColors.primaryColor.getColor(themeMode),
      ),
    ),
    primaryColor: AppColors.primaryColor.getColor(themeMode),
    scaffoldBackgroundColor: AppColors.backgroundColor.getColor(themeMode),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontSize: 16,
        color: AppColors.bodyTextColor.getColor(themeMode),
      ),
      headline1: TextStyle(
        fontSize: 16,
        color: AppColors.titleTextColor.getColor(themeMode),
      ),
    ),
  );
}