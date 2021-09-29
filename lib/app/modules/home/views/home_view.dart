import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_get_cli/app/routes/app_pages.dart';
import 'package:news_app_get_cli/app/widgets/article_tile.dart';
import 'package:news_app_get_cli/app/widgets/loading_indicator.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=> Scaffold(
        appBar: AppBar(
          title: Text('الرئيسية'),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.star), onPressed: ()=> Get.toNamed(Routes.FAVOURITES))],
        ),
        body: controller.isLoading ? LoadingIndicator() : ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: controller.getArticlesList!.length,
          itemBuilder: (context, index) {
            final article = controller.getArticlesList![index];
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
