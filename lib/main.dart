import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: MyHomePage(title: 'Home Page'),
    );
  }
}
