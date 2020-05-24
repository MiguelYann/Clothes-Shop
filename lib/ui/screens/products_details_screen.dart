import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String title;

  const ProductDetailsScreen({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
      ),
      body: Container(
        child: Text(title),
      ),
      
    );
  }
}