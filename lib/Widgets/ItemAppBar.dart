import 'package:flutter/material.dart';
class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key}) : super(key: key);

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
              "Product",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.favorite,
            size: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
