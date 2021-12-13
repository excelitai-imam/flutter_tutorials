import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials/shop_app/models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
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

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
