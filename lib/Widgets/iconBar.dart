import 'package:flutter/material.dart';
class iconBar extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const iconBar({Key? key, required this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        color: Colors.white,
        iconSize: 30,
    );
  }
}
