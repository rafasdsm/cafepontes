import 'package:cafepontes/components/cart.dart';
import 'package:cafepontes/components/produto.dart';
import 'package:flutter/material.dart';
import "package:cafepontes/components/appbar.dart";
import 'package:intl/intl.dart';

class ProdutoPage extends StatefulWidget {
  const ProdutoPage({
    super.key,
    required this.produto,
    });
  final Produto produto;

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  int cont = 1;

  @override
  Widget build(BuildContext context) {
    Cart cart = Cart();
    int cartItens = cart.carrinho.length;
    return Scaffold(
      appBar: appbar_section(cartItens, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    height: 500,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Image.network(
                      widget.produto.image_path,
                      fit:BoxFit.cover
                    ),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Text(
                        widget.produto.nome,
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50,),
                      SizedBox(
                        width: 700,
                        child: Text(
                            widget.produto.descricao,
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 35
                            ),
                            textAlign: TextAlign.justify,
                          ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 50,),
              Text(
                NumberFormat.simpleCurrency().format(widget.produto.preco*cont),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
                ),
              SizedBox(height: 50,),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        setState(() {
                          cont += 1;
                        });
                      }, icon: Icon(Icons.add)),
                      Text("$cont"),
                      IconButton(onPressed: (){
                        setState(() {
                          // se cont for 1, não diminuir mais
                          if(cont > 1){
                            cont -= 1;
                          }else{};
                        });
                      }, icon: Icon(Icons.remove))
                    ],
                  ),
                )
              ),
              SizedBox(height: 50,),
              Center(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        for(int i = 0; i<cont;i++){
                        cart.add_carrinho(
                          widget.produto
                        );
                        cartItens = cart.carrinho.length;
                      }
                      });
                    },
                    child: Container(
                        width: 400,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Adicionar ao carrinho",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                  ),
                )
              ),
              SizedBox(height: 100,),
            ],
          )
        )
      ),
    );
  }
}