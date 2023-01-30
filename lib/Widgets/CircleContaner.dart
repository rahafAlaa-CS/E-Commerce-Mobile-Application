import 'package:flutter/material.dart';

class CirclContainer extends StatelessWidget {
  final String txt;
  final Color color;
  final double Width;
  final GestureTapCallback? ontap;
  const CirclContainer(
      {Key? key,
      required this.txt,
      required this.color,
      required this.Width,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black, width: Width),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 8,
              ),
            ]),
        child:Text(txt,style: TextStyle(color: Colors.teal),)  ,
      ),
    );
    //   Container(
    //   height: 30,
    //   width: 30,
    //   alignment: Alignment.center,
    //   margin: EdgeInsets.symmetric(horizontal: 5),
    //   decoration: BoxDecoration(
    //       color: color,
    //       borderRadius: BorderRadius.circular(30),
    //       border: Border.all(color: Colors.black, width: Width),
    //       boxShadow: [
    //         BoxShadow(
    //           color: Colors.grey.withOpacity(0.5),
    //           spreadRadius: 2,
    //           blurRadius: 8,
    //         ),
    //       ]),
    //   child: InkWell(
    //     onTap:  ontap,
    //     child:Text(txt,style: TextStyle(color: Colors.teal),) ,
    //   ),
    //   // child: TextButton(
    //   //   child: Text(
    //   //     widget.txt,
    //   //     style: TextStyle(color: Colors.teal),
    //   //   ),
    //   //   onPressed: () {
    //   //     setState(() {
    //   //       widget.ontap;
    //   //     });
    //   //   },
    //   // ),
    //   // child: InkWell(
    //   //   onTap:ontap,
    //   //   child:Text(txt,style: TextStyle(color: Colors.teal),), ),
    //   // Text(txt,style: TextStyle(color: Colors.teal),),
    // );
  }
}
