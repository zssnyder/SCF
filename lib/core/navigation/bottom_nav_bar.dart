import 'package:flutter/material.dart';
import 'package:scf/core/core.dart';

final List<BottomNavigationBarItem> navigationItems = <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')),
          new BottomNavigationBarItem(icon: new Icon(Icons.list), title: new Text('Resources')),
          new BottomNavigationBarItem(icon: new Icon(Icons.edit), title: new Text('Notes')),
          new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile')),
      ];

// class SCFBottomNavigationBar extends StatefulWidget {
//   SCFBottomNavigationBar({Key key, this.currentIndex}) : super(key: key);

//   final int currentIndex;

//   @override
//   _SCFBottomNavigationBarState createState() => _SCFBottomNavigationBarState(currentIndex);
// }

// class _SCFBottomNavigationBarState extends State<SCFBottomNavigationBar> {

//   final int _currentIndex;
//   final List<BottomNavigationBarItem> _navigationItems = <BottomNavigationBarItem>[
//           new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home')),
//           new BottomNavigationBarItem(icon: new Icon(Icons.list), title: new Text('Resources')),
//           new BottomNavigationBarItem(icon: new Icon(Icons.edit), title: new Text('Notes')),
//           new BottomNavigationBarItem(icon: new Icon(Icons.person), title: new Text('Profile')),
//         ];

//   _SCFBottomNavigationBarState(this._currentIndex) : super();

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       items: _navigationItems,
//       onTap: (int i) {
//         Navigator.of(context).pushNamed("/" + i.toString());
//       },
//       currentIndex: _currentIndex,
//     );
//   }
// }