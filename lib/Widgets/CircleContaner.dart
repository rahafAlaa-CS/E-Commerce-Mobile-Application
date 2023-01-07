import 'package:flutter/material.dart';

class CirclContainer extends StatelessWidget {
  final String txt;
  final Color color;
  const CirclContainer({Key? key
    , required this.txt, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.black,width: 0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 8,
            ),
          ]
      ),
      child: Text(txt,style: TextStyle(color: Colors.teal),),
    );
  }
}
