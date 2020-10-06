import 'package:flutter/material.dart';
import 'package:last_attempt/models/user.dart';
import 'package:last_attempt/screens/authenticate/authenticate.dart';
import 'package:last_attempt/screens/wrapper.dart';
import 'package:last_attempt/services/auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Wrapped at the top with stream provider
    //Listening to any changes in auth status
    //by calling AuthService().user
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
