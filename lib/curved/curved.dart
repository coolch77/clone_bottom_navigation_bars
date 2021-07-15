import 'package:bottom_navigation/pages/add.dart';
import 'package:bottom_navigation/pages/discovery.dart';
import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/message.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Curved extends StatefulWidget {
  @override
  _CurvedState createState() => _CurvedState();
}

class _CurvedState extends State<Curved> {
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
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(Icons.home),
          Icon(Icons.map),
          Icon(Icons.add),
          Icon(Icons.message),
          Icon(Icons.people),
        ],
        index: _currentIndex,
        onTap: _changeItem,
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
