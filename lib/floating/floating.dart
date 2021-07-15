import 'package:bottom_navigation/pages/add.dart';
import 'package:bottom_navigation/pages/discovery.dart';
import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/message.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Floating extends StatefulWidget {
  @override
  _FloatingState createState() => _FloatingState();
}

class _FloatingState extends State<Floating> {
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
      bottomNavigationBar: FloatingNavbar(
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          FloatingNavbarItem(
            icon: Icons.map,
            title: 'Discovery',
          ),
          FloatingNavbarItem(
            icon: Icons.add,
            title: 'Add',
          ),
          FloatingNavbarItem(
            icon: Icons.message,
            title: 'Message',
          ),
          FloatingNavbarItem(
            icon: Icons.people,
            title: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _changeItem,
        backgroundColor: Colors.redAccent,
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
