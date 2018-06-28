import 'package:flutter/material.dart';
import 'platform.dart';

class PlatformAppBar extends AppBar {
  PlatformAppBar(BuildContext context, {Key key, Widget title}) 
    : super(key: key, 
            title: title,
            elevation: Theme.of(context).platform == TargetPlatform.iOS ? 4.0 : 4.0);
}