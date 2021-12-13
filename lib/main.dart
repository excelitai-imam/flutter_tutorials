import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_tutorials/shop_app/screens/products_overview_screen.dart';
import 'shop_app/screens/product_details_screen.dart';
import 'package:flutter_tutorials/shop_app/providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      //builder: (context) => Products(), /*Use this line in old version of provider package*/
      create: (context) => Products(),
      child: MaterialApp(
        title: 'My Shop',
        theme: ThemeData(
          fontFamily: 'Lato',
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
          ).copyWith(
            secondary: Colors.deepOrange,
          ),
        ),
        home: const ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen(),
        },
      ),
    );
  }
}
