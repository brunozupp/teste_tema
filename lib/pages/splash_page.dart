import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:teste_tema/core/stores/theme_store/theme_store.dart';
import 'package:teste_tema/pages/page_one.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Future.wait([
      Future.delayed(const Duration(seconds: 1)),
      GetIt.I.get<ThemeStore>().getThemeMode()
    ]).then((value) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const PageOne();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Center(
          child: Text(
            "Carregando...",
          ),
        ),
      ),
    );
  }
}