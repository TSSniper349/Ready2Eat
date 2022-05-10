import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stylish/screens/cart/checkout-card.dart';

import '../../models/Cart.dart';
import 'body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Đơn hàng của bạn",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${demoCarts.length} món",
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
        ),
      body: const Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }
}
