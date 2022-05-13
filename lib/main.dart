import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:teste_tema/core/stores/theme_store/theme_store.dart';
import 'package:teste_tema/pages/splash_page.dart';
import 'package:teste_tema/service_locator/service_locator.dart';

void main() {
  ServiceLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: GetIt.I.get<ThemeStore>().getThemeData,
        home: const SplashPage(),
      );
    });
  }
}
