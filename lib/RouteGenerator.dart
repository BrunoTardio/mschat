import 'package:flutter/material.dart';

import 'Cadastro.dart';
import 'Home.dart';
import 'Login.dart';

class RouteGenerator {

  static const String ROTA_HOME = "/home";
  static const String ROTA_LOGIN = "/login";

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch( settings.name ){
      case "/" :
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case ROTA_LOGIN:
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case "/cadastro" :
        return MaterialPageRoute(
            builder: (_) => Cadastro()
        );
      case ROTA_HOME :
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada!"),),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }

}