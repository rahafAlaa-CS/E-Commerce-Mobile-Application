import 'package:flutter/material.dart';
import 'package:flutter_project/Widgets/IconBtn.dart';
import 'package:flutter_project/Widgets/ItemPage.dart';

class Itemswidget extends StatefulWidget {
  final String image;
  final String ProductTitle;
  final String description;
  final String price;
 // final Color color ;
  // final String imgPath;
  // final String Name;
  // final String Price;
  // final assetPath;
  const Itemswidget({
    Key? key,
    required this.image,
    required this.ProductTitle,
    required this.description,
    required this.price,
   // required this.color ,
    //required this.imgPath,
    //  required this.Name, required this.Price,
    //  this.assetPath
  }) : super(key: key);

  @override
  State<Itemswidget> createState() => _ItemswidgetState();
}

class _ItemswidgetState extends State<Itemswidget> {
    Color color = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: 175,
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
        ),
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Text("-50%",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white,
                      )),
                ),
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color:color,
                  ),
                  // child: Icon(
                  //   Icons.favorite,
                  //   color: Colors.red,
                  // ),
                  onPressed: (){
                 //   print(object);
                    setState((){
                      if(color == Colors.black12){
                        color =Colors.red;
                      }
                      else
                        color =Colors.black12;

                    },);
                    // Icon(Icons.favorite,color: Colors.red,);
                    // Colors.red;
                   // Set().;
                  },
                ),
                //  IconBtn(icon: Icons.favorite, color: Colors.black12,onPressed:(){}),
              ],
            ),
            // Hero(tag: tag, child: child),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ItemPage(
                          imgPath: widget.image, Name: widget.ProductTitle, price: widget.price),
                    ));
                // Path();
                // assetPath = imgPath;
                // Hero(tag: assetPath,child:Image.asset(assetPath) ,);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Image.asset(
                  widget.image,
                  height: 110,
                  width: 110,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.centerLeft,
              child: Text(
                widget.ProductTitle,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.description,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.teal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.price+"\$",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.teal,
                      )),
                  Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.teal,
                    size: 21,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
