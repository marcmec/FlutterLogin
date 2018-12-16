import 'package:flutter/material.dart';
import 'animation.dart';

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
  final botao = Material(
    color: Colors.black12,
    borderRadius: BorderRadius.circular(100.0),
    
    child: MaterialButton(
      minWidth: 50.0,
      height: 50.0,
      onPressed: (){
        Navigator.of(context).pushNamed(MeuApp.tag);
      },
    )
    );
  final corpo= Container(
    padding: EdgeInsets.only(top: 100.0),
    width: MediaQuery.of(context).size.width,
    child: Column(
      children: <Widget>[
        avatar,_name,_description,botao,
      ],
    ),
  );
 
    return Scaffold(
      body: corpo
      
      
    );
  }
}