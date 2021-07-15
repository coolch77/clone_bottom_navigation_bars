import 'package:flutter/material.dart';
import 'package:bottom_navigation/pages/add.dart';
import 'package:bottom_navigation/pages/discovery.dart';
import 'package:bottom_navigation/pages/home.dart';
import 'package:bottom_navigation/pages/message.dart';
import 'package:bottom_navigation/pages/profile.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class Spincircle extends StatefulWidget {
  @override
  _SpincircleState createState() => _SpincircleState();
}

class _SpincircleState extends State<Spincircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
          items: [
            SCBottomBarItem(icon: Icons.home, onPressed: () {}),
            SCBottomBarItem(icon: Icons.map, onPressed: () {}),
            SCBottomBarItem(icon: Icons.message, onPressed: () {}),
            SCBottomBarItem(icon: Icons.person, onPressed: () {}),
          ],
          circleItems: [
            SCItem(icon: Icon(Icons.add_location_alt), onPressed: () {}),
            SCItem(icon: Icon(Icons.add_business), onPressed: () {}),
            SCItem(icon: Icon(Icons.add_a_photo), onPressed: () {}),
          ],
          circleColors: [
            Colors.white,
            Colors.orangeAccent,
            Colors.redAccent,
          ],
        ),
        child: Container(),
      ),
    );
  }
}
