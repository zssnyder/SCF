import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:scf/home/home.dart';
import 'package:scf/theme/theme.dart';

void main() => runApp(new SCF());

class SCF extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SCF',
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home: new HomePage(title: 'SCF'),
    );
  }

  ThemeData get themeData {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS: return kiOSTheme;
      case TargetPlatform.android: return kAndroidTheme;
      default: return kDefaultTheme;
    }
  }
}
