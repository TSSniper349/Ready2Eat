import 'package:flutter/material.dart';

import '../../../constants.dart';

// We need satefull widget for our categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Thứ 2","Thứ 3","Thứ 4","Thứ 5", "Thứ 6","Thứ 7"];
  // By default our first item will be selected
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: SizedBox(
        height: 20,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? kTextColor.withOpacity(0.8) : kTextColor.withOpacity(0.4),
                fontSize: 15,
              ),
            ),
            Container(
              //margin: const EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 27,
              color: selectedIndex == index ? Colors.orange : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}