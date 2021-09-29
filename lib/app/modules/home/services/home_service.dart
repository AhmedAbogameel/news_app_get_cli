import 'package:dio/dio.dart';
import 'package:news_app_get_cli/app/core/storageHelper/storage_helper.dart';
import 'package:news_app_get_cli/app/modules/home/models/articles_model.dart';

class HomeServices {

  static Future<ArticlesModel> getArticles()async{
    ArticlesModel articlesModel;
    final url = 'https://newsapi.org/v2/top-headlines?country=eg&category=sports&apiKey=df1a070b89e64ce78ba286cea86af31b';
    try{
      final response = await Dio().get(url);
      articlesModel = ArticlesModel.fromJson(response.data);
    }catch(e){
      throw e;
    }
    return articlesModel;
  }

}