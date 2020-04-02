import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mschat/Cadastro.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Colors.amberAccent),
      padding: EdgeInsets.all(16),
      child: Center(
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset(
                "images/a1.jpg",
                width: 200,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "E-mail",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32))),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                  hintText: "Senha",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16, bottom: 10),
              child: RaisedButton(
                child: Text("Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                color: Colors.orange,
                padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)
                ),
                onPressed: () {},
              ),
            ),
            Center(
              child: GestureDetector(
                child: Text(
                  "nao tem conta ? cadastra-se!",
                  style: TextStyle(
                    color:Colors.white
                  ),
                ),
                onTap: (){
              Navigator.push(
                context,MaterialPageRoute(
                builder: (context)=> Cadastro()
              )
              );
                },
              ),

            )
          ],
        )),
      ),
    )
    );
  }
}
