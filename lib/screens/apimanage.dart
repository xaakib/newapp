import 'package:flutter/material.dart';
import 'package:newapp/models/model.dart';
import 'package:newapp/services/article_service.dart';

class ApiManage extends StatefulWidget {
  @override
  _ApiManageState createState() => _ApiManageState();
}

class _ApiManageState extends State<ApiManage> {
  ApiServices apiServices = ApiServices();
  Article article;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ApiManage"),
      ),
      body: Container(
        child: Text(article.description),
      ),
    );
  }
}
