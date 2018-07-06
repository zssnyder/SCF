import 'package:flutter/material.dart';
import 'components/component.dart';

export 'components/component.dart';

class ResourcePage extends StatefulWidget {
  ResourcePage({Key key}) : super(key: key);

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  final SliverGridDelegate _gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);
  
  List<ResourceCard> resources = <ResourceCard>[
    ResourceCard(icon: Icons.library_books, title: Text('DMM Toolkit'),),
    ResourceCard(icon: Icons.video_library, title: Text('Videos'),),
    ResourceCard(icon: Icons.photo_library, title: Text('Diagrams'),),
    ResourceCard(icon: Icons.contacts, title: Text('Contacts'),)
  ];

  void _handleResourceTap() {
    print('Resource Card Tapped');
  }
  
  Widget _buildItem(BuildContext context, int i) {
    return new GestureDetector(
      onTap: () => _handleResourceTap(),
      child: resources[i],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resources'),),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: _gridDelegate,
        itemCount: resources.length,
        itemBuilder: _buildItem,
      ),
    );
  }
}