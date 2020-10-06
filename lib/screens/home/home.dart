import 'package:flutter/material.dart';
import 'package:last_attempt/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('App'),
        backgroundColor: Colors.yellow[800],
        elevation: 0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                // signOut method declared in services/auth.dart
                // when finished, user variable in wrapper.dart is updated
                // which will return authenticate screen instead of this
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('Log out'))
        ],
      ),
    );
  }
}
