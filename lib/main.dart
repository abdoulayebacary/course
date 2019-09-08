import 'package:flutter/material.dart';

import './product_manager.dart';

// import './products.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
        accentColor: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ma Liste'),
          
          // backgroundColor: Colors.red,
        ),
        body: ProductManager('Test Food'),
      ),
    );
  }
}
