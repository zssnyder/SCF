import 'package:flutter/material.dart';
import 'components/component.dart';

export 'components/component.dart';

class ResourcePage extends StatefulWidget {
  ResourcePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  final SliverGridDelegate _gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);

  void _handleResourceTap() {
    print('Resource Card Tapped');
  }
  
  Widget _buildItem(BuildContext context, int i) {
    return new GestureDetector(
      onTap: () => _handleResourceTap(),
      child: new ResourceCard(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
              gridDelegate: _gridDelegate,
              itemCount: 6,
              itemBuilder: _buildItem,
    );
  }
}