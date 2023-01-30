import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.category_outlined),
            title: Text("Categories"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text("Orders"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            title: Text("Cart"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.perm_identity_sharp),
            title: Text("Profile"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.notifications_none),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_right),
          ),
          ListTile(
            leading: Icon(Icons.favorite_border),
            title: Text("WishList"),
            trailing: Icon(Icons.arrow_right),
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Log Out"),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>login()));
            },
          ),
        ],
      ),
    );
  }
}
