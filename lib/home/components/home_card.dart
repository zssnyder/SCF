import 'package:flutter/material.dart';
import 'package:scf/theme/theme.dart';

class HomeCard extends StatelessWidget {

  const HomeCard({Key key});

  @override
  Widget build(BuildContext context) {

    return new Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Center(
            child: new Image.asset('assets/Receipt-Logo.jpg'),
          ),
          new Divider(),
          new Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.only(right: 16.0),
                  child: new CircleAvatar(
                    child: new Text('KS'),
                  ),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      cardBoxShadow,
                    ],
                  ),
                ),
                new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text('Kellar Stem', style: Theme.of(context).textTheme.subhead),
                        new Text('Welcome to the SCF App',
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.headline,
                      ),
                    ], 
                  ),
                ),
              ],
            ),
          ),
        ],
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
}