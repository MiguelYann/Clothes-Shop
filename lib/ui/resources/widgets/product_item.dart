import 'package:flutter/material.dart';
import 'package:shop/ui/screens/products_details_screen.dart';

class ProductItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ProductItem({Key key, this.imageUrl, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => ProductDetailsScreen(title: title)));
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite, color: Colors.redAccent.shade400),
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
