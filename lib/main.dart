import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scf/home/home.dart';
import 'package:scf/resource/resource.dart';
import 'package:scf/notes/notes.dart';
import 'package:scf/account/account.dart';
import 'package:scf/core/core.dart';
import 'package:scf/theme/theme.dart';

void main() => runApp(SCF());

class SCF extends StatefulWidget {

  _SCFState createState() => _SCFState();
}

class _SCFState extends State<SCF> {
  
  // Pages
  HomePage home;
  ResourcePage resource;
  NotesPage notes;
  AccountPage account;

  List<Widget> pages;

  // State Variables
  int currentTab = 0;
  Widget currentPage;

  @override
    void initState() {
      
      home = HomePage(key: pageKey(0));
      resource = ResourcePage(key: pageKey(1));
      notes = NotesPage(key: pageKey(2));
      account = AccountPage(key: pageKey(3));

      pages = [home, resource, notes, account];

      currentPage = home;

      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SCF',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColorBrightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: currentPage,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentTab,
          items: navigationItems,
          onTap: (int newTab) {
            setState(() {
              currentTab = newTab;
              currentPage = pages[newTab % pages.length];
            });
          },
        type: BottomNavigationBarType.fixed,
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
      case 2: return PageStorageKey('notes');
      default: return null;
    }
  }
}