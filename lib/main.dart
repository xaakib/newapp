import 'package:flutter/material.dart';

import 'apimanage.dart';

void main() {
  MyApp();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ApiManage(),
    );
  }
}
