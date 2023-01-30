import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.only(top: 20, bottom: 10, left: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage:
                //AssetImage("1.jpg") ,
                NetworkImage(
                    "https://www.creativefabrica.com/wp-content/uploads/2019/02/Profile-Icon-by-arus-1-312x208.jpg"),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("User Name",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                height: 10,
              ),
              Text("Contry",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }
}
