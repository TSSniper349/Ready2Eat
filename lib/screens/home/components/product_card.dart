import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final VoidCallback press;
  final int price,id;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 1.5),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(
                    Radius.circular(defaultBorderRadius)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defaultBorderRadius),
                child: Image.asset(
                    image,
                    height: 132,
                  ),
              ),
            ),
            const SizedBox(height: defaultPadding / 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Color.fromRGBO(102,102,102, 1), fontSize: 16),
                  ),
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  price.toString() + ".000đ",
                  style: const TextStyle(color: primaryColor, fontSize: 13,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
