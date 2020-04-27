import 'package:brewcrew/screens/authenticate/register.dart';
import 'package:brewcrew/screens/authenticate/sign_in.dart';
import 'package:flutter/material.dart';

import 'sign_in.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showRegister = true;

  void toggle (){
    setState(() {
      showRegister = !showRegister;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: showRegister ? Register(toggle) : SignIn(toggle),
    );
  }
}