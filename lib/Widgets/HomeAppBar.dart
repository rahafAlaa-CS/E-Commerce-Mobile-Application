import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/Pages/CartPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_project/Widgets/CostomDrawer.dart';

class HomeAppBar extends StatelessWidget {
  final VoidCallback? onPressed;
  const HomeAppBar({Key? key, this.onPressed}) : super(key: key);
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      // key: _scaffoldKey,
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(Icons.sort),
            color: Colors.teal,
            iconSize: 30,
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                    ));
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
