import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  AccountPage({Key key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Theme.of(context).primaryColor,
                child: Text('KS', 
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w100
                  ),
                ),
              ),
            ),
            Divider(),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  Text('Kellar Stem', style: Theme.of(context).textTheme.headline,),
                  Text('Staff', style: Theme.of(context).textTheme.subhead,)
                ],
              ),
            ), 
          ],
        ),
      ),
    );
  }
}