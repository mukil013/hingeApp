import 'package:flutter/material.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(Icons.shopping_cart, color: Colors.grey[500],),
          Text("Cart is empty",style: TextStyle(
            color: Colors.grey[500]
          ),)
        ],
      ),
    );
  }
}