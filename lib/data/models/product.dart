import 'package:flutter/material.dart';

class Product {
  final String productId;
  final String title;
  final String description;
  final double price;
  final String productImage;
  bool isFavorite;

  Product({
    this.isFavorite,
    @required this.productId,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.productImage,
  });
}
