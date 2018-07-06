import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  NotesPage({Key key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {

  void _handleAddNote() {
    print('Add Note Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleAddNote(),
        child: Icon(Icons.add),
      ),
    );
  }
}