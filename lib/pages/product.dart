import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Product details'),
        // backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Une page de details'),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Save'),
              onPressed: () => {},
            ),
          ),
          RaisedButton(
            child: Text('Retour'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      // margin: EdgeInsets.all(0.0),
    );
  }
}
