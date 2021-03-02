import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:newapp/models/model.dart';
import 'package:newapp/models/model.dart';

class ApiServices {
  String url =
      "http://newsapi.org/v2/everything?q=apple&from=2021-02-27&to=2021-02-27&sortBy=popularity&apiKey=c5d0829c93794ce3a717ad6f55787aaa";

  Future<List<Article>> getArticles() async {
    http.Response res = await http.get(url);
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("can`t get the Articles");
    }
  }
}
