import 'package:flutter/material.dart';

class product {
  String? name;
  String? category;
  double? price;
  String? img;
  product({required this.name, this.category, this.price, this.img});

  static List<product> generatedproductlist() {
    return [
      product(
          name: "AKJ K361-BT",
          category: "Headphones",
          price: 109,
          img: "asset/products/akj-1.png"),
      product(
          name: "AKJ K361-BT",
          category: "Headphones",
          price: 109,
          img: "asset/products/3.png"),
      product(
          name: "AKJ K361-BT",
          category: "Headphones",
          price: 109,
          img: "asset/products/4.jpg"),
      product(
          name: "AKJ K361-BT",
          category: "Headphones",
          price: 109,
          img: "asset/products/5.png"),
      product(
          name: "AKJ K361-BT",
          category: "Headphones",
          price: 109,
          img: "asset/products/image-1.png"),
    ];
  }
}
