import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/details/components/cart_counter.dart';
import '../../models/Cart.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(194,208,228, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
         Image.asset(
           product.image,
           height: MediaQuery.of(context).size.height * 0.63,
           fit: BoxFit.cover,
         ),
          //const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding*3,
                  defaultPadding, defaultPadding*3, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(defaultBorderRadius * 2),
                //   topRight: Radius.circular(defaultBorderRadius * 2),
                // ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: defaultPadding*0.6),
                        Text(
                          product.price.toString() + ".000??",
                          style: const TextStyle(color: primaryColor, fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: defaultPadding*2),
                  // const Padding(
                  //   padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  //   child: Text(
                  //     "",
                  //     style: TextStyle(fontSize: 15.5),
                  //   ),
                  // ),
                  const Text(
                    "Th??nh ph???n:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: defaultPadding/4),
                  Text(
                    product.description.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: defaultPadding),
                  const Text(
                    "L??u ??:",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: defaultPadding/4),
                  const Text(
                    "N???u m??n ??n ???????c ?????t tr?????c 1 ng??y th?? kh??ng th??? h???y y??u c???u",
                    style: TextStyle(fontSize: 16),
                  ),
                  // Row(
                  //   children: const [
                  //     ColorDot(
                  //       color: Color(0xFFBEE8EA),
                  //       isActive: false,
                  //     ),
                  //     ColorDot(
                  //       color: Color(0xFF141B4A),
                  //       isActive: true,
                  //     ),
                  //     ColorDot(
                  //       color: Color(0xFFF4E5C3),
                  //       isActive: false,
                  //     ),
                  //   ],
                  // ),
                  const SizedBox(height: defaultPadding*2.5),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              demoCarts.add(Cart(product: product, numOfItem: 1));
                            },
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: const StadiumBorder()),
                            child: const Text("Th??m v??o gi??? h??ng"),
                          ),
                        ),
                        const SizedBox(width: defaultPadding*0.5),
                        CartCounter(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
