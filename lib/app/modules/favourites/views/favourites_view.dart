import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_get_cli/app/core/storageHelper/storage_helper.dart';
import 'package:news_app_get_cli/app/modules/home/controllers/home_controller.dart';
import 'package:news_app_get_cli/app/widgets/article_tile.dart';

import '../controllers/favourites_controller.dart';

class FavouritesView extends GetView<FavouritesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourites'),
        centerTitle: true,
      ),
      body: GetBuilder<HomeController>(
        id: 'fav',
        builder: (controller) => ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: StorageHelper.getArticles.length,
          itemBuilder: (context, index) {
            final article = StorageHelper.getArticles[index];
            return ArticleTile(
              image: article.urlToImage,
              title: article.title,
            );
          },
        ),
      ),
    );
  }
}
