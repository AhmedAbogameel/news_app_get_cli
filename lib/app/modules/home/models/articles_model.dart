// To parse this JSON data, do
//
//     final articlesModel = articlesModelFromJson(jsonString);

import 'dart:convert';

ArticlesModel articlesModelFromJson(String str) => ArticlesModel.fromJson(json.decode(str));

String articlesModelToJson(ArticlesModel data) => json.encode(data.toJson());

class ArticlesModel {
  ArticlesModel({
    this.status,
    this.totalResults,
    this.articles,
  });

  String? status;
  int? totalResults;
  List<Article>? articles;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
    status: json["status"],
    totalResults: json["totalResults"],
    articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "totalResults": totalResults,
    "articles": List<dynamic>.from(articles!.map((x) => x.toJson())),
  };
}

class Article {
  Article({
    this.title,
    this.description,
    this.urlToImage,
  });

  String? title;
  String? description;
  String? urlToImage;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    title: json["title"],
    description: json["description"],
    urlToImage: json["urlToImage"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "urlToImage": urlToImage,
  };
}