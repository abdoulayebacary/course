import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Test Nourriture'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text('Ajouter le produit'),
          onPressed: () {
            setState(() {
              _products.add('Nouriture Avance');
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
