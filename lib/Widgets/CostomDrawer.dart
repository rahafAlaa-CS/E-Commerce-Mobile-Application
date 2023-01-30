import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Header.dart';
import 'MenuItems.dart';

class CostomDrawer extends StatelessWidget {
  const CostomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.teal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Header(),
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
                child: MenuItems(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
