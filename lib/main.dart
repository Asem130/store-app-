import 'package:flutter/material.dart';
import 'package:store_app/screens/home_Page.dart';
import 'package:store_app/screens/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        UpdateProductsPage.id:(context) => UpdateProductsPage(),
      },
    );
  }
}
