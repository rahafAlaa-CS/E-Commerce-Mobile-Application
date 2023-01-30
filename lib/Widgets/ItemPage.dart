import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/cupertino.dart';
import 'CircleContaner.dart';
import 'ElevatedBtnIcon.dart';
import 'IconBtn.dart';
import 'ItemAppBar.dart';

class ItemPage extends StatefulWidget {
  final String imgPath;
  final String Name;
  final String price;
  const ItemPage(
      {Key? key,
      required this.imgPath,
      required this.Name,
      required this.price})
      : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  double t1 = 0, t2 = 0, t3 = 0, t4 = 0, t5 = 0;
  double tr = 0, tg = 0, tb = 0, ti = 0, to = 0;
  int i = 1;
  tn1() {
    setState(() {
      t1 = 2;
      t2 = 0;
      t3 = 0;
      t4 = 0;
      t5 = 0;
    });
  }

  tn2() {
    setState(() {
      t1 = 0;
      t2 = 2;
      t3 = 0;
      t4 = 0;
      t5 = 0;
    });
  }

  tn3() {
    setState(() {
      t1 = 0;
      t2 = 0;
      t3 = 2;
      t4 = 0;
      t5 = 0;
    });
  }

  tn4() {
    setState(() {
      t1 = 0;
      t2 = 0;
      t3 = 0;
      t4 = 2;
      t5 = 0;
    });
  }

  tn5() {
    setState(() {
      t1 = 0;
      t2 = 0;
      t3 = 0;
      t4 = 0;
      t5 = 2;
    });
  }

  tr1() {
    setState(() {
      tr = 2;
      tg = 0;
      tb = 0;
      ti = 0;
      to = 0;
    });
  }

  tr2() {
    setState(() {
      tr = 0;
      tg = 2;
      tb = 0;
      ti = 0;
      to = 0;
    });
  }

  tr3() {
    setState(() {
      tr = 0;
      tg = 0;
      tb = 2;
      ti = 0;
      to = 0;
    });
  }

  tr4() {
    setState(() {
      tr = 0;
      tg = 0;
      tb = 0;
      ti = 2;
      to = 0;
    });
  }

  tr5() {
    setState(() {
      tr = 0;
      tg = 0;
      tb = 0;
      ti = 0;
      to = 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              widget.imgPath,
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            widget.Name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                                fontSize: 28),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemSize: 20,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.favorite,
                              color: Colors.teal,
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (i != 1) i--;
                                      });
                                    },
                                    child: Icon(CupertinoIcons.minus, size: 18),
                                  ),

                                  // Icon(
                                  //   CupertinoIcons.minus,
                                  //   size: 18,
                                  // ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("${i}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.teal,
                                      )),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        i++;
                                      });
                                    },
                                    child: Icon(CupertinoIcons.plus, size: 18),
                                  ),
                                  // Icon(
                                  //   CupertinoIcons.plus,
                                  //   size: 18,
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "This is more detailed description of the product.\nyou can write here more about the prodict.this \nis lengthy description.",
                      style: TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CirclContainer(
                              txt: "5",
                              color: Colors.white,
                              Width: t1,
                              ontap: tn1,
                            ),
                            CirclContainer(
                              txt: "6",
                              color: Colors.white,
                              Width: t2,
                              ontap: tn2,
                            ),
                            CirclContainer(
                              txt: "7",
                              color: Colors.white,
                              Width: t3,
                              ontap: tn3,
                            ),
                            CirclContainer(
                              txt: "8",
                              color: Colors.white,
                              Width: t4,
                              ontap: tn4,
                            ),
                            CirclContainer(
                              txt: "9",
                              color: Colors.white,
                              Width: t5,
                              ontap: tn5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Color: ",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.teal,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            CirclContainer(
                              txt: "",
                              color: Colors.red,
                              Width: tr,
                              ontap: tr1,
                            ),
                            CirclContainer(
                              txt: "",
                              color: Colors.green,
                              Width: tg,
                              ontap: tr2,
                            ),
                            CirclContainer(
                              txt: "",
                              color: Colors.blue,
                              Width: tb,
                              ontap: tr3,
                            ),
                            CirclContainer(
                              txt: "",
                              color: Colors.indigo,
                              Width: ti,
                              ontap: tr4,
                            ),
                            CirclContainer(
                              txt: "",
                              color: Colors.orange,
                              Width: to,
                              ontap: tr5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${int.parse(widget.price) * i}\$",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.teal),
                              ),
                              ElevatedBtnIcon(
                                  text: "Add to Card",
                                  color: Colors.teal,
                                  icon: Icons.shopping_cart),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
