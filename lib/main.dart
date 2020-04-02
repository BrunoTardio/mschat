import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'Home.dart';
import 'Login.dart';

void main(){
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      primaryColor: Colors.amber,
      accentColor: Colors.amberAccent
    ),
    debugShowCheckedModeBanner: false,
  ));
  
  Firestore.instance.collection("usuarios")
    .document("001")
    .setData({"nome":"Tardio"});
  
}
