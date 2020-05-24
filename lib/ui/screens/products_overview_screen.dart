import 'package:flutter/material.dart';
import 'package:shop/data/models/dummy_products.dart';
import 'package:shop/data/models/product.dart';
import 'package:shop/ui/resources/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products overview'),
        backgroundColor: Colors.lightBlue,
      ),
      body: GridView.builder(
          itemCount: dummyProducts.length,
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 3 / 2, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return ProductItem(
              imageUrl: dummyProducts[index].productImage,
              title: dummyProducts[index].title,
            );
          }),
    );
  }
}
