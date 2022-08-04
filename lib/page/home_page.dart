import 'package:badges/badges.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/widgets/CategoriesWidget.dart';
import 'package:untitled9/widgets/HomeAppBar.dart';
import 'package:untitled9/widgets/itemsWidget.dart';


class HomePage extends StatefulWidget {
  static final String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  children: [
    HomeAppBar(),
    Container(
      //height: 500,
      padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: Color(0xFFEDECF2),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(35),
          topLeft: Radius.circular(35)
        )
      ),
      child: Column(
        children: [
         Container(
           margin: EdgeInsets.symmetric(horizontal: 15),
           padding: EdgeInsets.symmetric(horizontal: 15),
           height: 50,
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(30)
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
                     hintText: 'Search here...',
                   ),
                 ),
               ),
               Spacer(),
               Icon(Icons.camera_alt,
               size: 27,
               color: Color(0xFF4C53A5),)
             ],
           ),
         ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: Text('Categories',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5)
            ),),
          ),
          CategoriesWidget(),



          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Text(
              'Best Selling',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5)
              ),
            ),
          ),
          ItemsWidget(),
        ],
      ),
    )
  ],
),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 70,
        color: Color(0xFF4C53A5),
        items: [
          Icon(Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],

      ),
    );
  }
}