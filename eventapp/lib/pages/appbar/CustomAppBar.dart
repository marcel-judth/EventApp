import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CustomAppBar() {
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        title: Text(
          "Eventlist",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        title: Text(
          "Eventlist",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        title: Text(
          "Eventlist",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(BottomNavigationBarItem(
        icon: Icon(
          Icons.event,
          color: Colors.black,
        ),
        title: Text(
          "Eventlist",
          style: TextStyle(color: Colors.black),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: bottomBarItems, type: BottomNavigationBarType.fixed);
  }
}
