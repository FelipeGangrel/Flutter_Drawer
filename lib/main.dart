import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/second_page.dart';

void main() {
  runApp(new MaterialApp(
    home: new HomePage(),
    color: Colors.pinkAccent,
    routes: <String, WidgetBuilder> {
      "/secondPage": (BuildContext context) => new SecondPage(),
    },
  ));
}
