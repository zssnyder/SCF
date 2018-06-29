import 'package:flutter/material.dart';
import 'package:scf/core/core.dart';

class SCFBottomNavBar extends PlatformBottomNavBar {
  SCFBottomNavBar({Key key, int currentIndex, this.context}) 
    : super(items: navigationItems,
            onTap: (int i) {
              Navigator.pushNamed(context, "/" + i.toString());
            },
            currentIndex: currentIndex,
    );

  final BuildContext context;

  static final List<BottomNavigationBarItem> navigationItems = <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')),
          new BottomNavigationBarItem(icon: new Icon(Icons.list), title: new Text('Resources')),
          new BottomNavigationBarItem(icon: new Icon(Icons.edit), title: new Text('Notes')),
          new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile')),
        ];
}