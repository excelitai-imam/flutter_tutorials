import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const ProductDetailScreen({Key? key}) : super(key: key);
  // final String title;
  // final double price;
  // ProductDetailScreen(this.title, this.price);

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    // ...
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
    );
  }
}
