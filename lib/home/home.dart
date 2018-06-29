import 'package:flutter/material.dart';
import 'package:scf/core/core.dart';
import 'package:scf/theme/theme.dart';
import 'components/component.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _cardPressed() {
    print('Card Pressed');
  }

  Widget _buildItem(BuildContext context, int index) {
    return Container(
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      child: RawMaterialButton(
        onPressed: () => _cardPressed(),
        // constraints: new BoxConstraints(),
        child: new HomeCard(),
      ),
      decoration: new BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(const Radius.circular(5.0)),
        boxShadow: <BoxShadow>[
          cardBoxShadow,
        ],
      ),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
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