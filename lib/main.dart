import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:mschat/RouteGenerator.dart';
import 'Home.dart';
import 'Login.dart';

void main(){
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.amber,
      accentColor: Colors.amberAccent
    ),
    initialRoute: "/",
    onGenerateRoute:RouteGenerator.generateRoute ,
    debugShowCheckedModeBanner: false,
  ));

  
}
