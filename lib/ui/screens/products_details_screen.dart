import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/data/provider/products.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = "/product-details";

  const ProductDetailsScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<Products>(context).findProductById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
      body: Container(
        child: Text(
          product.title,
        ),
      ),
    );
  }
}
