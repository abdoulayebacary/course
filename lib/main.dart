import 'package:flutter/material.dart';

import './pages/home.dart';

// import './products.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.deepPurple
      ),
      home: HomePage()
    );
  }
}
