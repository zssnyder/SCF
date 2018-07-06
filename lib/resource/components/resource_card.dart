import 'package:flutter/material.dart';
import 'package:scf/theme/theme.dart';

class ResourceCard extends StatelessWidget {

  final IconData icon;
  final Text title;

  ResourceCard({@required this.icon, @required this.title}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                child: Center(
                  child: Icon(icon,
                    size: 50.0,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: title,
              ),
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