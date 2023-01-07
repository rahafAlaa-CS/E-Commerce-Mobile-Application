import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Widgets/HomeAppBar.dart';

import '../Widgets/Categorieswidget.dart';
import '../Widgets/Itemswidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          SingleChildScrollView(
            child: Container(

              // height: 500,
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.camera_alt,
                          color: Colors.teal,
                          size: 27,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                  //Categories
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Categorieswidget(image: "images/1.png", text: "Sandal"),
                        Categorieswidget(
                            image: "images/2.png", text: "Woman Watch"),
                        Categorieswidget(
                            image: "images/3.png", text: "laptop Bag"),
                        Categorieswidget(
                            image: "images/4.png", text: "Travel Basg"),
                        Categorieswidget(
                            image: "images/5.png", text: "Woman Bag"),
                        Categorieswidget(image: "images/6.png", text: "heels"),
                        Categorieswidget(
                            image: "images/7.png", text: "Men Watch"),
                      ],
                    ),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text("Best Selling",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Itemswidget(
                        image: "images/1.png",
                        ProductTitle: "Sandal",
                        description: "Write description of product",
                        price: "55",
                      ),
                      Itemswidget(
                        image: "images/2.png",
                        ProductTitle: "Woman watch",
                        description: "Write description of product",
                        price: "75",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Itemswidget(
                        image: "images/3.png",
                        ProductTitle: "laptop Bag",
                        description: "Write description of product",
                        price: '50',
                      ),
                      Itemswidget(
                        image: "images/4.png",
                        ProductTitle: "Travel Basg",
                        price: "117",
                        description: "Write description of product",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Itemswidget(
                        image: "images/5.png",
                        ProductTitle: "Woman Bag",
                        description: "Write description of product",
                        price: "35",
                      ),
                      Itemswidget(
                        image: "images/6.png",
                        ProductTitle: "heels",
                        description: "Write description of product",
                        price: "27",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Itemswidget(
                        image: "images/7.png",
                        ProductTitle: "Men Watch",
                        description: "Write description of product",
                        price: "80",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar:CurvedNavigationBar(
      //  buttonBackgroundColor: Colors.transparent,
        onTap: (index){},
        height: 50,
        backgroundColor: Colors.white,
        color: Colors.teal,
        items: [
          Icon(Icons.home,size: 30,color: Colors.white,),
          Icon(Icons.favorite,size: 30,color: Colors.white,),
          Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
          Icon(Icons.person,size: 30,color: Colors.white,),
        ],
      ) ,
    );
  }
}
