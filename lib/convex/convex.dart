import 'package:bottom_navigation/pages/add.dart';
import 'package:bottom_navigation/pages/discovery.dart';
import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/message.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Convex extends StatefulWidget {
  @override
  _ConvexState createState() => _ConvexState();
}

class _ConvexState extends State<Convex> {
  int _currentIndex = 0;

  List<Widget> _widgetOption = [
    Home(),
    Discovery(),
    Add(),
    Message(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_currentIndex),
      bottomNavigationBar: ConvexAppBar.badge(
        {3: '17'},
        badgeColor: Colors.black12,
        badgeMargin: EdgeInsets.only(
          bottom: 30,
          right: 50,
        ),
        height: 50,
        items: [
          TabItem(
            icon: Icon(
              Icons.home,
            ),
            title: 'Home',
          ),
          TabItem(
            icon: Icon(
              Icons.map,
            ),
            title: 'Discovery',
          ),
          TabItem(
            icon: Icon(
              Icons.add,
            ),
            title: 'Add',
          ),
          TabItem(
            icon: Icon(
              Icons.message,
            ),
            title: 'Message',
          ),
          TabItem(
            icon: Icon(
              Icons.people,
            ),
            title: 'Profile',
          ),
        ],
        initialActiveIndex: _currentIndex,
        onTap: _changeItem,
        backgroundColor: Colors.red,
        activeColor: Colors.white,
      ),
    );
  }

  void _changeItem(int value) {
    print(value);
    setState(() {
      _currentIndex = value;
    });
  }
}
