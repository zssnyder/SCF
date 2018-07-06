import 'package:flutter/material.dart';
import 'package:scf/theme/theme.dart';

class ResourceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Center(child: 
                Icon(Icons.description,
                ),
              ),
              Divider(),
              Text('Resource')
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: <BoxShadow>[
            cardBoxShadow,
          ],
        ),
      ),
    );
  }
}