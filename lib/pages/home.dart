import 'package:flutter/material.dart';
import '../product_manager.dart';




class HomePage extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ma Liste'),
          // backgroundColor: Colors.red,
        ),
        body: ProductManager(),
      );
  }
}