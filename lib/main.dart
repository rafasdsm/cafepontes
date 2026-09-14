import 'package:cafepontes/components/produto.dart';
import 'package:cafepontes/pages/desktop/home.dart';
import 'package:cafepontes/pages/desktop/produto_page.dart';
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
      home: HomePage()  /*ProdutoPage(
        produto: Produtos().get_produtos()[0],
      ),*/
    );
  }
}
