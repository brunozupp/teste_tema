import 'package:get_it/get_it.dart';
import 'package:teste_tema/core/stores/theme_store/theme_store.dart';
import 'package:teste_tema/stores/page_one_store/page_one_store.dart';
import 'package:teste_tema/stores/page_three_store/page_three_store.dart';
import 'package:teste_tema/stores/page_two_store/page_two_store.dart';

class StoreLocator {

  StoreLocator() {

    GetIt.I.registerSingleton<ThemeStore>(ThemeStore());

    GetIt.I.registerFactory<PageOneStore>(() => PageOneStore());
    
    GetIt.I.registerFactory<PageTwoStore>(() => PageTwoStore());
    
    GetIt.I.registerFactory<PageThreeStore>(() => PageThreeStore());
  }
}