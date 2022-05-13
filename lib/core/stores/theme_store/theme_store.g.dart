// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeStore on _ThemeStoreBase, Store {
  Computed<ThemeMode>? _$themeModeComputed;

  @override
  ThemeMode get themeMode =>
      (_$themeModeComputed ??= Computed<ThemeMode>(() => super.themeMode,
              name: '_ThemeStoreBase.themeMode'))
          .value;
  Computed<bool>? _$isLightComputed;

  @override
  bool get isLight => (_$isLightComputed ??=
          Computed<bool>(() => super.isLight, name: '_ThemeStoreBase.isLight'))
      .value;
  Computed<bool>? _$isDarkComputed;

  @override
  bool get isDark => (_$isDarkComputed ??=
          Computed<bool>(() => super.isDark, name: '_ThemeStoreBase.isDark'))
      .value;
  Computed<ThemeData>? _$getThemeDataComputed;

  @override
  ThemeData get getThemeData =>
      (_$getThemeDataComputed ??= Computed<ThemeData>(() => super.getThemeData,
              name: '_ThemeStoreBase.getThemeData'))
          .value;

  late final _$_themeModeAtom =
      Atom(name: '_ThemeStoreBase._themeMode', context: context);

  @override
  ThemeMode get _themeMode {
    _$_themeModeAtom.reportRead();
    return super._themeMode;
  }

  @override
  set _themeMode(ThemeMode value) {
    _$_themeModeAtom.reportWrite(value, super._themeMode, () {
      super._themeMode = value;
    });
  }

  late final _$toggleThemeAsyncAction =
      AsyncAction('_ThemeStoreBase.toggleTheme', context: context);

  @override
  Future<void> toggleTheme() {
    return _$toggleThemeAsyncAction.run(() => super.toggleTheme());
  }

  late final _$getThemeModeAsyncAction =
      AsyncAction('_ThemeStoreBase.getThemeMode', context: context);

  @override
  Future<void> getThemeMode() {
    return _$getThemeModeAsyncAction.run(() => super.getThemeMode());
  }

  late final _$setThemeModeAsyncAction =
      AsyncAction('_ThemeStoreBase.setThemeMode', context: context);

  @override
  Future<void> setThemeMode(ThemeMode theme) {
    return _$setThemeModeAsyncAction.run(() => super.setThemeMode(theme));
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode},
isLight: ${isLight},
isDark: ${isDark},
getThemeData: ${getThemeData}
    ''';
  }
}
