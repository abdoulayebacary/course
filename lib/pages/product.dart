import 'package:flutter/material.dart';
import 'dart:async';
class ProductPage extends StatelessWidget {
  final String title, imageUrl;

  ProductPage({@required this.title, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('back button');
        Navigator.pop(context,false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(title),
          // backgroundColor: Colors.red,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).primaryColor,
                child: Text('DELETE'),
                onPressed: () => Navigator.pop(context, true),
              ),
            ),
          ],
        ),
        // margin: EdgeInsets.all(0.0),
      ),
    );
  }
}
