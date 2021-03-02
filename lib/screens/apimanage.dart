import 'package:flutter/material.dart';
import 'package:newapp/models/model.dart';
import 'package:newapp/services/article_service.dart';

class ApiManage extends StatefulWidget {
  @override
  _ApiManageState createState() => _ApiManageState();
}

class _ApiManageState extends State<ApiManage> {
  ApiServices _apiServices = ApiServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ApiManage"),
      ),
      body: FutureBuilder<News>(
        future: _apiServices.getNews(),
        builder: (context,snapshot){
          if (snapshot.hasData) {
            List<Article> list = snapshot.data.articles;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,index){
                return Text(list[index].title);
              },
            );
          }else{
            return CircularProgressIndicator();
          }

      }),
    );

  }
}
