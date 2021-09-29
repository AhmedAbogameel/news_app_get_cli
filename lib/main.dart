import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_get_cli/app/core/storageHelper/storage_helper.dart';
import 'app/routes/app_pages.dart';

void main() async{
  await StorageHelper.init();
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: (context, child) => SafeArea(
        top: Platform.isAndroid,
        child: Directionality(
          child: child!,
          textDirection: TextDirection.rtl,
        ),
      ),
    ),
  );
}