import 'package:get/get.dart';
import 'package:news_app_get_cli/app/core/storageHelper/storage_helper.dart';
import 'package:news_app_get_cli/app/modules/home/models/articles_model.dart';
import 'package:news_app_get_cli/app/modules/home/services/home_service.dart';

class HomeController extends GetxController {

  ArticlesModel? articlesModel;
  Rx<bool> _isLoading = true.obs;
  bool get isLoading => _isLoading.value;
  List<Article>? get getArticlesList => articlesModel!.articles;

  Future<void> getArticles()async{
    try{
      articlesModel = await HomeServices.getArticles();
    }catch(e){
      print(e);
    }
    _isLoading.value = false;
  }

  Future<void> cacheArticle(Article article)async{
    StorageHelper.cacheArticle(article);
    update(['icon','fav']);
  }

}
