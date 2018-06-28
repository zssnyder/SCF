import 'package:flutter/material.dart';

class PlatformBottomNavBar extends BottomNavigationBar {
  PlatformBottomNavBar({Key key, List<BottomNavigationBarItem> items, Function onTap, int currentIndex: 0, BottomNavigationBarType type, Color fixedColor, double iconSize: 24.0}) 
    : super(key: key, items: items, onTap: onTap, currentIndex: currentIndex, type: type, fixedColor: fixedColor, iconSize: iconSize);
}