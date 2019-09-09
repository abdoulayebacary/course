import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title, imageUrl;


ProductPage({@required this.title, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Text('Retour'),
               onPressed: () => Navigator.pop(context),
            ),
          ),
         
        ],
      ),
      // margin: EdgeInsets.all(0.0),
    );
  }
}
