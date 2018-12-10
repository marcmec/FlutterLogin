import 'package:flutter/material.dart';



class pagelogin   extends StatefulWidget {
  @override
  _StatePage createState() => _StatePage();
}

class _StatePage extends State<pagelogin> {
  @override
  Widget build(BuildContext context) {

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
      color: Colors.green,
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.lightGreenAccent.shade100,
      elevation: 7.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42,
        onPressed: (){},
        child: Text('Login', style:TextStyle(color: Colors.black)),

      ),
    );
    final esqueciLabel = FlatButton(
      child: Text('Esqueci a senha',style: TextStyle(color:Colors.black38)),
      onPressed: (){},
    );
    return Scaffold(
    backgroundColor: Colors.greenAccent,
    body: Center(
      child: ListView(
        shrinkWrap: true,
        padding:EdgeInsets.only(left:24.0, right:24.0),
        children: <Widget>[
          CircleAvatar(backgroundColor: Colors.white, radius: 50.0,),
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