import 'package:digital_wallet/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kTextDark,
        unselectedItemColor: const Color(0XFFD5D5E1),
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.graphic_eq_sharp), label: "Graph"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ]);
  }
}
