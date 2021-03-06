import 'package:flutter/material.dart';
import 'package:meulogin/src/pagelogin.dart';
import 'package:meulogin/src/homepage.dart';
import 'package:meulogin/src/animation.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  // This widget is the root of your application.
  final routes = <String, WidgetBuilder>{
    Pagelogin.tag: (context)=> Pagelogin(),
    HomePage.tag:(context)=> HomePage(),
    MeuApp.tag:(context)=> MeuApp(),
  
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Pagelogin(),
      routes: routes,
      
    );
  }

}
