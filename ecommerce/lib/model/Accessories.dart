import 'package:flutter/material.dart';

class Accessories {
  String? name;
  String? Status;
  double? price;
  String? img;
  Accessories({required this.name, this.Status, this.price, this.img});

  static List<Accessories> generatedaccessorieslist() {
    return [
      Accessories(
          name: "AKJ K361-BT",
          Status: "Available",
          price: 109,
          img: "asset/products/image-1.png"),
      Accessories(
          name: "AKJ K361-BT",
          Status: "UnAvailable",
          price: 109,
          img: "asset/products/3.png"),
      Accessories(
          name: "AKJ K361-BT",
          Status: "Available",
          price: 109,
          img: "asset/products/4.jpg"),
      Accessories(
          name: "AKJ K361-BT",
          Status: "Available",
          price: 109,
          img: "asset/products/5.png"),
      Accessories(
          name: "AKJ K361-BT",
          Status: "Available",
          price: 109,
          img: "asset/products/akj-1.png"),
    ];
  }
}
