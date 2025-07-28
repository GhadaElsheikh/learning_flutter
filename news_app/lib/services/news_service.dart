import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final dio = Dio();
  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=$category&apiKey=34355bc04da1443ca2f972f7b3a84284');

    Map<String, dynamic> jsonData = response.data;

    final articlesList = jsonData["articles"];

    List<ArticleModel> articles = [];

    for (var article in articlesList) {
      articles.add(ArticleModel(
          description: article["description"],
          image: article["urlToImage"],
          title: article["title"]));
    }
    return articles;
  }
}
