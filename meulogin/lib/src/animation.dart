import 'package:flutter/material.dart';
import 'package:meulogin/flare/flare_actor.dart';
import 'homepage.dart';
import 'dart:async';

void main() => runApp(MaterialApp());

class MeuApp extends StatefulWidget{

  static final tag= 'animation';
  @override
  _MeuAppState createState() => _MeuAppState();



}

class _MeuAppState extends State<MeuApp>{

  @override
  void initState() {
      super.initState();
      Timer(Duration(seconds: 4),() => Navigator.of(context).pushNamed(HomePage.tag));

    }
  @override
  Widget build(BuildContext context){
    final animation= FlareActor("assets/Pizza Slice.flr",
      alignment: Alignment.center,
      animation: "Pizza Bounce", fit: BoxFit.contain,);
    return Scaffold(
    
      body: animation
      
    );
  }
}