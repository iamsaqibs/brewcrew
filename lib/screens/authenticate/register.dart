import 'package:brewcrew/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final Function toggle;

  Register(this.toggle);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _authService = AuthService();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign Up'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: widget.toggle,
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text('Sign In', style: TextStyle(color: Colors.white),)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(onChanged: (val) {
                setState(() {
                  _email = val.toString().trim();
                });
              }),
              SizedBox(height: 20.0),
              TextFormField(
                  obscureText: true,
                  onChanged: (val) {
                    setState(() {
                      _password = val.toString().trim();
                    });
                  }),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                onPressed: () async {},
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
