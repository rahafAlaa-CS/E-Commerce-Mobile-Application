import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/HomePage.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              //push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            child: Icon(Icons.arrow_back, size: 30, color: Colors.teal),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Cart",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.more_vert,
          size: 30,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
