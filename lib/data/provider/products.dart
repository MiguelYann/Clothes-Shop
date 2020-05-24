import 'package:flutter/material.dart';
import 'package:shop/data/models/dummy_products.dart';
import 'package:shop/data/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items {
    return [..._items];
  }

  Product findProductById(String id) {
    print('Product ${_items.firstWhere((product) => product.productId == id)}');
    return _items.firstWhere((product) => product.productId == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
