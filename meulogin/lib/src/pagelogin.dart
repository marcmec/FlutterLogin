import 'package:flutter/material.dart';
import 'package:meulogin/src/homepage.dart';



class Pagelogin extends StatefulWidget {
  static final tag= 'page-login';
  @override
  _StatePage createState() => _StatePage();
  
}

class _StatePage extends State<Pagelogin> {
  @override
  Widget build(BuildContext context) {

    final _fotoperfil= Hero(
      tag:'hero',
      child:CircleAvatar(
      radius:50.0,
      child:Image.asset('assets/stark.jpg'),
      )
      );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'myemailadress@marcos.com.br',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),

        )
      ),

    );
    final password = TextFormField(
      autofocus: false,
      initialValue: 'meuemailincrivel.com.br',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Senha',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          
        )
      ),

    );
    final loginbutton =Material(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.grey.shade100,
      elevation: 7.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42,
        onPressed: (){
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        child: Text('Login', style:TextStyle(color: Colors.black)),

      ),
    );
    final esqueciLabel = FlatButton(
      child: Text('Esqueci a senha',style: TextStyle(color:Colors.black38)),
      onPressed: (){
      },
    );
    return Scaffold(
    backgroundColor: Colors.blueAccent,
    body: Center(
      child: ListView(
        shrinkWrap: true,
        padding:EdgeInsets.only(left:24.0, right:24.0),
        children: <Widget>[
          _fotoperfil,
          SizedBox(height: 49.0),
          email,
          SizedBox(height: 7.0),
          password,
          SizedBox(height: 20.0),
          loginbutton,
          esqueciLabel
        ],
      ),
    ),      
      
    );
  }
}