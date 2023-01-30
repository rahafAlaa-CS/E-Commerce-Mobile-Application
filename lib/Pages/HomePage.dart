import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Pages/CartPage.dart';
import 'package:flutter_project/Pages/FavoritePage.dart';
import 'package:flutter_project/Widgets/homebody.dart';
import 'package:flutter_project/Widgets/CostomDrawer.dart';
import 'package:flutter_project/Widgets/iconBar.dart';
import 'package:flutter/cupertino.dart';
import '../Widgets/Categorieswidget.dart';
import '../Widgets/Itemswidget.dart';
import '../Widgets/favoriteAppBar.dart';
import 'MePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<Widget> _tabPage = [homebody(),FavoritePage(),CartPage(),MePage()];
int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _tabPage[i],
      bottomNavigationBar:CurvedNavigationBar(
      //  buttonBackgroundColor: Colors.transparent,
        onTap: (index){
          setState(() {
            i=index;
          });
        },
        height: 50,
        backgroundColor: Colors.transparent,
        color: Colors.teal,
        items: [
          // iconBar(icon: Icons.home,onPressed: (){
          //   setState(() {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          //   });
          // },),
          // iconBar(icon: Icons.favorite,onPressed: (){
          //   setState(() {
          //    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          //   });
          // },),
          // iconBar(icon: Icons.shopping_cart,onPressed: (){
          //   setState(() {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => CartPage(),));
          //   });
          // },),
          // iconBar(icon: Icons.person,onPressed: (){
          //   setState(() {
          //    // Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
          //   });
          // },),
          Icon(Icons.home,size: 30,color: Colors.white,),
          Icon(Icons.favorite,size: 30,color: Colors.white,),
          Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
          Icon(Icons.person,size: 30,color: Colors.white,),
        ],
      ) ,
      // drawer: CostomDrawer(),
    );
  }
}
// class drawerUser extends StatefulWidget {
//   const drawerUser({Key? key}) : super(key: key);
//
//   @override
//   State<drawerUser> createState() => _drawerUserState();
// }
//
// class _drawerUserState extends State<drawerUser> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer();
//   }
// }
