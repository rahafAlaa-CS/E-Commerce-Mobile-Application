import 'package:flutter/material.dart';

import '../Widgets/CartAppBar.dart';
import '../Widgets/CartBottonNavBar.dart';
import '../Widgets/CartItems.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                CartItems(
                  image: "images/2.png",
                  productTitle: "Woman Watch",
                  price: "55",
                ),
                CartItems(
                  image: "images/6.png",
                  productTitle: "Heels",
                  price: "27",
                ),
                CartItems(
                  image: "images/5.png",
                  productTitle: "Woman Bag",
                  price: "75",
                ),
                Container(
                 // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                 margin: EdgeInsets.symmetric(vertical:20,horizontal: 15 ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                     children: [
                       Container(
                         decoration: BoxDecoration(
                           color: Colors.teal,
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Icon(Icons.add,color: Colors.white,),
                       ),
                       Padding(padding: EdgeInsets.all(10),
                         child: Text("Add Cupon Code",style: TextStyle(
                         color: Colors.teal,
                           fontWeight: FontWeight.bold,
                           fontSize: 16,
                       ),),)
                     ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:CartBottonNavBar() ,
    );
  }
}
