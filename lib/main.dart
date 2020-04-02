import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'Home.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
  
  Firestore.instance.collection("usuarios")
    .document("001")
    .setData({"nome":"Tardio"});
  
}
