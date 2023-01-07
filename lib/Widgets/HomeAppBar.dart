import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/CartPage.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            color: Colors.teal,
            size: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "DB Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
