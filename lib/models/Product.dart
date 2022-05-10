import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price,id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> demo_product = [
  Product(
    id: 1,
    image: "assets/images/xoi-ga.jpg",
    title: "Xôi gà",
    description: "Xôi, gà, trứng cút, hành phi",
    price: 15,
  ),
  Product(
    id: 2,
    image: "assets/images/mi-quang.jpg",
    title: "Mì quảng",
    description: "Mì, trứng gà, tôm, thịt bò, rau xà lách",
    price: 15,
  ),
  Product(
    id: 3,
    image: "assets/images/banh-cuon.jpg",
    title: "Bánh cuốn",
    description: "Bánh cuốn, chả heo, hành phi, rau xà lách",
    price: 15,
  ),
  Product(
    id: 4,
    image: "assets/images/mi-tom.jpg",
    title: "Mì tôm",
    description: "Mì gói, trứng",
    price: 12,
  ),
];
