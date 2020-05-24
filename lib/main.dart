import 'package:flutter/material.dart';
import 'package:shop/data/provider/products.dart';
import 'package:shop/ui/screens/products_details_screen.dart';
import 'package:shop/ui/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        routes: {
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
        },
        theme: ThemeData(
            primarySwatch: Colors.brown,
            accentColor: Colors.cyan,
            appBarTheme: AppBarTheme(color: Colors.brown)),
        home: ProductOverviewScreen(),
      ),
    );
  }
}
