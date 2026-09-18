import 'package:cafepontes/pages/desktop/cardapio.dart';
import 'package:cafepontes/pages/desktop/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cardapio()  /*ProdutoPage(
        produto: Produtos().get_produtos()[0],
      ),*/
    );
  }
}
