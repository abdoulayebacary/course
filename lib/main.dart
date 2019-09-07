import 'package:flutter/material.dart';

import './product_manager.dart';

// import './products.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ma Liste'),
          backgroundColor: Colors.red,
        ),
        body: ProductManager(),
      ),
    );
  }
}
