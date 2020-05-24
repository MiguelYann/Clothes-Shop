import 'package:flutter/material.dart';
import 'package:shop/ui/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductOverviewScreen(),
    );
  }
}
