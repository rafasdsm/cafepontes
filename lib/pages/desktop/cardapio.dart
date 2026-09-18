import 'package:cafepontes/components/appbar.dart';
import 'package:cafepontes/components/cart.dart';
import 'package:cafepontes/pages/desktop/produto_page.dart';
import 'package:flutter/material.dart';
import "package:cafepontes/components/produto.dart";
import 'package:intl/intl.dart';

class Cardapio extends StatelessWidget {
  Cardapio({super.key});

  List<Produto> produto_por_tipo(String tipo){
    Produtos pro_generator = Produtos();
    List<Produto> produtos = pro_generator.get_produtos();
    List<Produto> final_list = [];
    for(var i in produtos){
      if(i.tipo == tipo){
        final_list.add(i);
      }
    }
    return final_list;
  }

  List<Widget> prodcard_por_tipo(context,String tipo){
    List<Widget> lista = [];
    List<Produto> prod_list = produto_por_tipo(tipo);

    for(var p in prod_list){
      lista.add(
        productcontainer(context, p)
      );
    }

    return lista;
  }

  @override
  Widget build(BuildContext context) {
    Cart cart = Cart();
    int car_itens = cart.carrinho.length;
    Produtos pro_generator = Produtos();
    List<Produto> produtos = pro_generator.get_produtos();

    return Scaffold(
      appBar: appbar_section(car_itens,context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bebidas",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
              Divider(),
              Wrap(
                
                children: prodcard_por_tipo(context,"bebida"),
              ),
              SizedBox(height: 50,),
              Text(
                "Pães",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ),
              Divider(),
              Wrap(
                children: prodcard_por_tipo(context,"pao"),
              ),
            ],
          ),
          ),
      )
      );
  }

  Padding productcontainer(context,Produto produto) {
    return Padding(
          padding: EdgeInsets.all(20),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProdutoPage(produto: produto)));
              },
              child: Container(
                height: 500,
                child: Stack(
                  children: [
                    Image.asset(
                      produto.image_path,
                      width: 300,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: -1,
                      child: Container(
                          height: produto.nome.length >= 20 ? 150 : 100,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  Text(
                                    produto.nome,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize:  25,
                                    ),
                                    ),
                                  Text(
                                    NumberFormat.simpleCurrency().format(produto.preco),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20
                                    ),
                                  )
                                  ]
                              ),
                            )
                        )
                      )
                  ],
                ),
              )
            ),
          )
          );
  }
}
