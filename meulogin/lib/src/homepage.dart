import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final tag='home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 @override
  Widget build(BuildContext context) {
  final avatar= Hero(
    tag: 'hero',
    child:CircleAvatar(backgroundColor: Colors.white, radius: 50.0,
    child: Image.asset('assets/iron.png'),)
    ); //ADD IMPLEMENTACAO
  final _name= Padding(
        padding: EdgeInsets.all(27.0),
    child:Text('SUN TZU',style: TextStyle(color: Colors.black26, fontSize: 17),),
  );
  final _description= Padding(
    padding: EdgeInsets.all(17.0),
    child:Text("Comandar muitos é o mesmo que comandar poucos. Tudo é uma questão de organização. Controlar muitos ou poucos é uma mesma e única coisa. É apenas uma questão de formação e sinalizações.")
  );
  final corpo= Container(
    padding: EdgeInsets.only(top: 100.0),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      gradient: LinearGradient(colors:[
        Colors.green,Colors.lightGreenAccent])
    ),
    child: Column(
      children: <Widget>[
        avatar,_name,_description
      ],
    ),
  );
 
    return Scaffold(
      body: corpo,
      
    );
  }
}