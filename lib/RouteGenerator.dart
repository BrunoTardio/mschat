import 'package:flutter/material.dart';
import 'package:mschat/Configuracoes.dart';
import 'package:mschat/Mensagens.dart';

import 'Cadastro.dart';
import 'Home.dart';
import 'Login.dart';

class RouteGenerator {
  static const String ROTA_HOME = "/home";
  static const String ROTA_LOGIN = "/login";
  static const String ROTA_CADASTRO = "/cadastro";
  static const String ROTA_CONFIGURACOES = "configuracoes";



  static Route<dynamic> generateRoute(RouteSettings settings) {

    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => Login());
      case ROTA_LOGIN:
        return MaterialPageRoute(builder: (_) => Login());
      case ROTA_CADASTRO:
        return MaterialPageRoute(builder: (_) => Cadastro());
      case ROTA_HOME:
        return MaterialPageRoute(builder: (_) => Home());
      case ROTA_CONFIGURACOES:
        return MaterialPageRoute(builder: (_) => Configuracoes());
      case "/mensagens":
        return MaterialPageRoute(builder: (_) => Mensagens(args));
      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada!"),
        ),
        body: Center(
          child: Text("Tela não encontrada!"),
        ),
      );
    });
  }
}
