import 'package:flutter/material.dart';
import 'package:myfirstapp/CardScreen.dart';
import 'package:myfirstapp/bottom_screen/about.dart';
import 'package:myfirstapp/bottom_screen/cart.dart';
import 'package:myfirstapp/bottom_screen/home.dart';
import 'package:myfirstapp/bottom_screen/profilr.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});

  @override
  State<Dashboardscreen> createState() => _DashboardscreenState();
}

class _DashboardscreenState extends State<Dashboardscreen> {
  int _selectedIndex = 0;

  List<Widget> lstScreen = [
    const Homescreen(),
    const CartScreen(),
    const Profilescreen(),
    const AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: lstScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_crash),
            label: 'Aboutus',
          ),
          
        ],
      ),
    );
  }
}
