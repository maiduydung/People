import 'package:flutter/material.dart';
import 'package:last_attempt/models/user.dart';
import 'package:last_attempt/screens/authenticate/authenticate.dart';
import 'package:last_attempt/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //specify user auth status from StreamProvider in main.dart
    final user = Provider.of<User>(context);
    print(user);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
