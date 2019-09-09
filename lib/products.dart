import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, this.deleteProduct);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(
                      imageUrl: products[index]['image'],
                      title: products[index]['title'],
                    ),
                  ),
                ).then((bool value) {
                  if(value){
                    deleteProduct(index);
                  }
                  print(value);
                }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProducsList() {
    Widget productCards;

    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productCards = Center(
        child: Text('Pas de produits, SVP ajouter en quelque'),
      );
    }

    return productCards;
  }

// function Principal
  @override
  Widget build(BuildContext context) {
    return _buildProducsList();
  }
}
