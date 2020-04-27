import 'package:flutter/material.dart';

import '../../services/auth.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text('Brewcrew'),
        // centerTitle: true,
        backgroundColor: Colors.brown[400],
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await AuthService().signout();
            }, 
            icon: Icon(Icons.person, color: Colors.white,), 
            label: Text('Logout', style: TextStyle(color: Colors.white),)
          )
        ],
      ),
    );
  }
}