import 'package:flutter/material.dart';
import 'package:flutter_app_cats/ui/cat_list.dart';

void main() async {
  runApp(new CatBoxApp());
}

class CatBoxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.pinkAccent,
          fontFamily: 'Bitter'),
      home: new CatList(),
    );
  }
}
