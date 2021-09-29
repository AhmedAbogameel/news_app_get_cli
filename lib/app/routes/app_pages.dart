import 'package:get/get.dart';

import 'package:news_app_get_cli/app/modules/counter/bindings/counter_binding.dart';
import 'package:news_app_get_cli/app/modules/counter/views/counter_view.dart';
import 'package:news_app_get_cli/app/modules/favourites/bindings/favourites_binding.dart';
import 'package:news_app_get_cli/app/modules/favourites/views/favourites_view.dart';
import 'package:news_app_get_cli/app/modules/home/bindings/home_binding.dart';
import 'package:news_app_get_cli/app/modules/home/views/home_view.dart';
import 'package:news_app_get_cli/app/modules/splash/bindings/splash_binding.dart';
import 'package:news_app_get_cli/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COUNTER,
      page: () => CounterView(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITES,
      page: () => FavouritesView(),
      binding: FavouritesBinding(),
    ),
  ];
}
