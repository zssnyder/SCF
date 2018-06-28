import 'package:flutter/material.dart';

class PlatformScaffold extends StatefulWidget {
  PlatformScaffold({Key key, this.appBar, this.body, this.bottomNavigationBar}) : super(key: key);

  final AppBar appBar;
  final Widget body;
  final BottomNavigationBar bottomNavigationBar;

  @override
  _PlatformScaffoldState createState() => new _PlatformScaffoldState(appBar, body, bottomNavigationBar);
}

class _PlatformScaffoldState extends State<PlatformScaffold> with SingleTickerProviderStateMixin {
  AppBar _appBar;
  Widget _body;
  BottomNavigationBar _bottomNavigationBar;

  _PlatformScaffoldState(this._appBar, this._body, this._bottomNavigationBar) : super();

  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        appBar: _appBar,
        body: new Container(
          child: _body,
          decoration: Theme.of(context).platform == TargetPlatform.iOS
          ? new BoxDecoration(
            border: new Border(
              top: new BorderSide(color: Theme.of(context).primaryColorLight)
            )
          )
          : null,
        ),
        bottomNavigationBar: _bottomNavigationBar,
      );
    }
}