import 'package:brewcrew/screens/authenticate/authenticate.dart';
import 'package:brewcrew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/user.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    return user != null ? Home() : Authenticate();
  }
}