import 'package:bottom_navigation/pages/add.dart';
import 'package:bottom_navigation/pages/discovery.dart';
import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/message.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalBottom extends StatefulWidget {
  @override
  _NormalBottomState createState() => _NormalBottomState();
}

class _NormalBottomState extends State<NormalBottom> {
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
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
