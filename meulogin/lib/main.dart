import 'package:flutter/material.dart';
import 'package:meulogin/src/pagelogin.dart';

void main() => runApp(loginApp());

class loginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: pagelogin(),
    );
  }

}
