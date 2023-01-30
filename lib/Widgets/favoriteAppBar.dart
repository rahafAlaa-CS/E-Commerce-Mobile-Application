import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Pages/HomePage.dart';

class FavoriteAppBar extends StatelessWidget {
  const FavoriteAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.
              //pop(context);
              push(context, MaterialPageRoute(builder: (context) => HomePage(),));
            },
            child: Icon(Icons.arrow_back, size: 30, color: Colors.teal),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Favorite",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.checklist_sharp,
            size: 30,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
