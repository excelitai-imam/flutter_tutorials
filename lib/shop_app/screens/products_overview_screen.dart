import 'package:flutter/material.dart';
import 'package:flutter_tutorials/shop_app/widgets/product_item.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red T-Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Blue Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 39.99,
      imageUrl:
          'https://4.imimg.com/data4/OX/VM/MY-35263749/men-s-casual-shirt-500x500.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Formal Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 49.99,
      imageUrl:
          'https://5.imimg.com/data5/YS/RU/SZ/SELLER-3749501/mens-shirts-500x500.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Casual Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 24.99,
      imageUrl:
          'https://5.imimg.com/data5/BX/IB/PD/SELLER-41433387/1pe-8--500x500.jpg',
    ),
    Product(
      id: 'p5',
      title: 'Casual T-Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 34.99,
      imageUrl:
          'https://www.rushordertees.com/design/ZoomImage.php?src=NTUyMTM2Mw_f&style=RT2000&colorCode=SPGY&x=240&y=300&width=880&height=880&scale=1.7&watermark=false&autoInvertDesign=true',
    ),
    Product(
      id: 'p6',
      title: 'Trawser',
      description: 'A red shirt - it is pretty red!',
      price: 54.99,
      imageUrl: 'https://www.myar.pk/wp-content/uploads/2020/07/mst4HG0.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (context, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
      // body: GridView.builder(
      //   padding: const EdgeInsets.all(10),
      //   itemCount: loadedProducts.length,
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,
      //     childAspectRatio: 3 / 2,
      //     crossAxisSpacing: 10,
      //     mainAxisSpacing: 10,
      //   ),
      //   itemBuilder: (ctx, i) => ProductItem(
      //     loadedProducts[i].id,
      //     loadedProducts[i].title,
      //     loadedProducts[i].imageUrl,
      //   ),
      // ),
    );
  }
}
