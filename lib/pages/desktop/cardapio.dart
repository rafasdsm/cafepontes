import 'package:cafepontes/components/appbar.dart';
import 'package:cafepontes/components/cart.dart';
import 'package:cafepontes/components/produto.dart';
import 'package:cafepontes/pages/desktop/produto_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cardapio extends StatelessWidget {
  Cardapio({super.key});

  @override
  List<Produto> produtos = Produtos().get_produtos();
  final Cart cart = Cart();
  int carItens = 0;

  Widget build(BuildContext context) {
    carItens = cart.carrinho.length;
    return Scaffold(
      appBar: appbar_section(carItens,context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bebidas",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            Divider(),
            SizedBox(height: 30,),
            gridproduto(Produtos().get_produto_tipo("bebida")),
            SizedBox(height: 50,),
            Text(
              "Pães",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              ),
            Divider(),
            SizedBox(height: 30,),
            gridproduto(Produtos().get_produto_tipo("pao"))
          ],
        ),
      )
    );
  }

  SizedBox gridproduto(List<Produto> produtos) {
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: produtos.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            childAspectRatio: 300/400
            ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left:20,right:20),
              child: product_container(context,produtos[index]),
              );
          }
      ),
    );
  }


  SizedBox product_container(context,Produto produto) {
    String image_path = produto.image_path;
    String name = produto.nome;
    double price = produto.preco;
    return SizedBox(
      child: Stack(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ProdutoPage(produto: produto))
                );
              },
              child: Container(
                width: 300,
                height: 400,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Image.asset(
                  image_path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom:60,
            child: Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight: Radius.circular(32))
              ),
              child: Column(
                children: [
                  Spacer(),
                  Text(name,style: TextStyle(fontSize: name.length >= 20 ? 20 : 25,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text(NumberFormat.simpleCurrency().format(price),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                ],
              ),
            )
            )
        ],
      ),
    );
  }
}