import 'package:flutter/material.dart';
import 'package:scf/core/core.dart';
import 'components/component.dart';

export 'components/component.dart';

class ResourcePage extends StatefulWidget {
  ResourcePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  
  final int _tabIndex = 1;

  // _ResourcePageState(this._title) : super(); 
  
  Widget _buildItem(BuildContext context, int i) {
    return new GestureDetector(
      child: new ResourceCard(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(context, title: new Text(widget.title)),
      body: new ListView.builder(
        itemCount: 7,
        itemBuilder: _buildItem,
      ),
      bottomNavigationBar: SCFBottomNavBar(currentIndex: _tabIndex, context: context,),
    );
  }
}