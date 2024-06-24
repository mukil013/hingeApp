import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BtNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BtNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        padding: const EdgeInsets.all(16),
        color: Colors.grey[400],
        activeColor: Colors.white,
        tabBackgroundColor: Colors.blue.shade700,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 8,
        gap: 10,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
        GButton(icon: Icons.home,text: "shop"),
        GButton(icon: Icons.shopping_basket_rounded, text: "cart",)
      ]),
    );
  }
}