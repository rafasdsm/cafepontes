import 'package:cafepontes/components/apihandler.dart';
import 'package:cafepontes/components/appbar.dart';
import 'package:cafepontes/components/cart.dart';
import 'package:cafepontes/components/produto.dart';
import 'package:cafepontes/pages/desktop/produto_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cardapio extends StatefulWidget {
  Cardapio({super.key});

  @override
  State<Cardapio> createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  Cart cart = Cart();
  late Future<List<Produto>> _produtosFuture;

  @override
  void initState() {
    super.initState();
    _produtosFuture = pegar_produtos();
  }

  @override
  Widget build(BuildContext context) {
    int cart_itens = cart.carrinho.length;
    return Scaffold(
      appBar: appbar_section(cart_itens, context),
      body: FutureBuilder<List<Produto>>(
        future: _produtosFuture,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "${snapshot.error}",
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          List<Produto> _bebida = Produtos().sort_by_tipo(snapshot.data!, "bebida");
          List<Produto> _pao = Produtos().sort_by_tipo(snapshot.data!, "pao");

          return SingleChildScrollView(
            child: Column(
              children: [
                Text("Bebidas",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                Divider(),
                GridView.builder(
                  itemCount: _bebida.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,childAspectRatio: 300/400),
                  itemBuilder: (context,index){
                    return Padding(padding: EdgeInsets.all(20),child: product_card(_bebida[index]),);
                  },
                  ),
                Text("Pães",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                Divider(),
                GridView.builder(
                  itemCount: _pao.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5,childAspectRatio: 300/400),
                  itemBuilder: (context,index){
                    return Padding(padding: EdgeInsets.all(20),child: product_card(_pao[index]),);
                  },
                  )
              ],
            ),
          );
        },
      ),
    );
  }

  SizedBox product_card(Produto _produto) {
    return SizedBox(
      child: Stack(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProdutoPage(produto: _produto),
                  ),
                );
              },
              child: Container(
                width: 300,
                height: 400,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Image.network(
                  _produto.image_path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                color: Colors.grey.shade200,
              ),
              child: Column(
                children: [
                  Spacer(),
                  Text(
                    _produto.nome,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    NumberFormat.simpleCurrency().format(_produto.preco),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}