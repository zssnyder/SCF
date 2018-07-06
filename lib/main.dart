import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scf/home/home.dart';
import 'package:scf/resource/resource.dart';
import 'package:scf/core/core.dart';
import 'package:scf/theme/theme.dart';

void main() => runApp(new SCF());

class SCF extends StatefulWidget {

  _SCFState createState() => _SCFState();
}

class _SCFState extends State<SCF> {
  
  // Pages
  HomePage home;
  ResourcePage resource;

  List<Widget> pages;

  // State Variables
  int currentTab = 0;
  Widget currentPage;

  @override
    void initState() {
      
      home = HomePage(key: pageKey(0),);
      resource = ResourcePage(key: pageKey(1),);

      pages = [home, resource];

      currentPage = pages[currentTab];

      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SCF',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: navigationItems,
          onTap: (int i) {
            setState(() {
              currentTab = i;
              currentPage = pages[i % pages.length];
            });
          },
        ),
      ),
    );
  }

  ThemeData get themeData {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS: return kiOSTheme;
      case TargetPlatform.android: return kAndroidTheme;
      default: return kDefaultTheme;
    }
  }

  Key  pageKey(int i) {
    switch (i) {
      case 0: return PageStorageKey('home');
      case 1: return PageStorageKey('resource');
      default: return null;
    }
  }
}