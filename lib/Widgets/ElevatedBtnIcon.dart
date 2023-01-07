import 'package:flutter/material.dart';

class ElevatedBtnIcon extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final VoidCallback? onPressed;

  const ElevatedBtnIcon({Key? key,
    required this.text ,
    required this.color,
    required  this.icon,
    this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(text,style: TextStyle(color: Colors.white),),
      icon: Icon(icon,color:Colors.white,),
      style: ButtonStyle (
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all( EdgeInsets.all(10)),
      ),
    );
  }
}
