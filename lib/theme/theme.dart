import 'package:flutter/material.dart';

export 'theme_ios.dart';
export 'theme_android.dart';
export 'theme_default.dart';

final BoxShadow cardBoxShadow = new BoxShadow(
            color: Colors.black.withAlpha(30),
            offset: new Offset(5.0, 5.0),
            blurRadius: 10.0,
          );