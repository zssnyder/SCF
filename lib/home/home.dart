import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(title: Text('SCF'),),
      body: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemBuilder: _buildItem,
          itemCount: 3,      
      ),
    );
  }
}