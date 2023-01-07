import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const IconBtn({Key? key,required this.icon ,
    required this.color
    , this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed:onPressed,
      icon: Icon(icon),
      color: color,
    );
  }
}
