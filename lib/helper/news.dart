import 'dart:convert';

import 'package:news/model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  late List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=1376078cd8774cf78cedbd73a3062e9a";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach(
        (element) {
          if (element["urlToImage"] != null &&
              element["description"] != null &&
              element["title"] != null &&
              element["content"] != null &&
              element["url"] != null) {
            ArticleModel articleModel1 = new ArticleModel(
                author:
                    element["author"] != null ? element['author'] : "Anonmous",
                content: element["content"] != null
                    ? element['content']
                    : "Non Further Content Available",
                description: element['description'],
                imageUrl: element['urlToImage'],
                title: element['title'],
                url: element['url']);

            news.add(articleModel1);
          }
        },
      );
    }
  }
}

class CategoryNews {
  late List<ArticleModel> news = [];

  Future<void> getNews(String catagory) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=$catagory&apiKey=1376078cd8774cf78cedbd73a3062e9a";
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach(
        (element) {
          if (element["urlToImage"] != null &&
              element["description"] != null &&
              element["title"] != null &&
              element["content"] != null &&
              element["url"] != null) {
            ArticleModel articleModel1 = new ArticleModel(
                author:
                    element["author"] != null ? element['author'] : "Anonmous",
                content: element["content"] != null
                    ? element['content']
                    : "Non Further Content Available",
                description: element['description'],
                imageUrl: element['urlToImage'],
                title: element['title'],
                url: element['url']);

            news.add(articleModel1);
          }
        },
      );
    }
  }
}
