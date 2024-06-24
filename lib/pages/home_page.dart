import 'package:flutter/material.dart';
import 'package:hinge/components/bottom_nav_bar.dart';
import 'package:hinge/pages/cart_page.dart';
import 'package:hinge/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selected = 0;

  void navbtm(index){
    setState(() {
      _selected = index;
    });
  }


  final List<Widget> pages = [
    const shopPage(), 
    const cartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          icon: const Icon(Icons.menu,
          color: Colors.black),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        )
      ),
      bottomNavigationBar: BtNav(
        onTabChange: (index) => navbtm(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            children: [
              DrawerHeader(
              child: Image.asset('lib/images/logo.png',color: Colors.grey,),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey,
            )
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.home , color: Colors.black),
              title: Text('Home', style: TextStyle(
                color: Colors.black
              ),),
            ),
          ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.info , color: Colors.black),
              title: Text('About', style: TextStyle(
                color: Colors.black
              ),),
            ),
          ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,bottom: 20),
            child: ListTile(
              leading: Icon(Icons.logout , color: Colors.black),
              title: Text('Logout', style: TextStyle(
                color: Colors.black
              ),),
            ),
          )
        ],
        ),
      ),
      body: pages[_selected],
    );
  }
}