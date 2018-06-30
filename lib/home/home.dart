import 'package:flutter/material.dart';
import 'package:scf/core/core.dart';
import 'components/component.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _cardPressed() {
    print('Card Pressed');
  }

  Widget _buildItem(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => _cardPressed(),
      child: new HomeCard(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new PlatformScaffold(
      appBar: new PlatformAppBar(context,
        title: new Text(widget.title),
      ),
      body: new ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: _buildItem,
        itemCount: 3,
        ),
      bottomNavigationBar: new SCFBottomNavBar(currentIndex: 0, context: context),
    );
  }
}