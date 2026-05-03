import 'package:flutter/material.dart';
import 'package:navgation_app/product_detail_screen.dart';
import 'home_screen.dart';
import 'product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductListScreen());
  }
}
