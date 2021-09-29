import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_get_cli/app/core/storageHelper/storage_helper.dart';
import 'package:news_app_get_cli/app/modules/home/controllers/home_controller.dart';
import 'package:news_app_get_cli/app/modules/home/models/articles_model.dart';

class ArticleTile extends StatelessWidget {
  final String? image;
  final String? title;

  const ArticleTile({Key? key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(5)),
              child: Image.network(
                image!,
                width: Get.size.width / 2.5,
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5,top: 10),
                    child: Text(title!, maxLines: 3),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      icon: GetBuilder<HomeController>(
                        id: 'icon',
                        builder: (controller) => Icon(
                            StorageHelper.isArticleExists(image!)
                                ? Icons.star
                                : Icons.star_border),
                      ),
                      onPressed: () => Get.find<HomeController>()
                          .cacheArticle(Article(title: title, urlToImage: image)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
