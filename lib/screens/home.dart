import 'package:flutter/material.dart';
import 'package:ui_app/screens/account.dart';
import 'package:ui_app/screens/cart.dart';
import 'package:ui_app/screens/home_content.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List _children = [HomeContent(), Cart(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GAMINGCOM',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xffD02025),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff021634),
        unselectedItemColor: Color(0xffD02025),
        currentIndex: _currentIndex,
        onTap: (int idx) {
          setState(() {
            _currentIndex = idx;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
