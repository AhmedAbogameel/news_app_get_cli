import 'dart:async';

import 'package:get/get.dart';
import 'package:news_app_get_cli/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 3), ()=> Get.offAllNamed(Routes.HOME));
    super.onInit();
  }
}
