import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ProductItem({Key key, this.imageUrl, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        trailing: IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
        backgroundColor: Colors.black54,
        leading: IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
