import 'package:flutter/material.dart';

class PlatformBottomNavBar extends BottomNavigationBar {
  PlatformBottomNavBar(BuildContext context, {Key key, List<BottomNavigationBarItem> items, Function onTap, int currentIndex: 0, BottomNavigationBarType type, double iconSize: 24.0}) 
    : super(key: key, items: items, onTap: onTap, currentIndex: currentIndex, type: type, iconSize: iconSize);
}