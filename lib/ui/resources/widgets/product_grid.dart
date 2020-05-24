
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/data/provider/products.dart';

import 'product_item.dart';

class GridProduct extends StatelessWidget {
  const GridProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final producData =  Provider.of<Products>(context);
   final products = producData.items;
    return GridView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.2, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return ProductItem(
            id: products[index].productId,
            imageUrl: products[index].productImage,
            title: products[index].title,
          );
        });
  }
}