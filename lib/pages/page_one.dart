import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:teste_tema/core/stores/theme_store/theme_store.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
        actions: [
          Observer(builder: (_) {
            return IconButton(
              onPressed: () async {
                await GetIt.I.get<ThemeStore>().toggleTheme();
              },
              icon: Icon(
                GetIt.I.get<ThemeStore>().isDark
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            );
          }),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
