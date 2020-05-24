import 'package:flutter/material.dart';
import 'package:shop/ui/resources/widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products overview'),
        centerTitle: true,
      ),
      body: GridProduct(),
    );
  }
}

