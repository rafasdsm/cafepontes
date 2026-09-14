import 'package:cafepontes/components/appbar.dart';
import 'package:cafepontes/components/cart.dart';
import 'package:cafepontes/pages/desktop/historia.dart';
import 'package:cafepontes/pages/desktop/produto_page.dart';
import 'package:flutter/material.dart';
import "package:cafepontes/components/produto.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Produto> produtos = Produtos().get_produtos();
  final Cart cart = Cart();
  int carItens = 0;

  @override
  Widget build(BuildContext context) {
    carItens = cart.carrinho.length;
    return Scaffold(
      appBar: appbar_section(carItens,context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Banner
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 700,
                  child: Image.asset("images/hero_banner.png",fit: BoxFit.cover,),
                ),
                Positioned(
                  left: 100,
                  child: Text(
                    "Café\nPontes",
                    style: TextStyle(
                      fontSize: 200,
                      fontWeight: FontWeight.bold,
                      color:Colors.white
                    ),
                    )
                    )
              ],
            ),
            SizedBox(height: 50,),
            // Lançamento cards text
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Lançamento",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " Bear coffe!",
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink
                    ),
                  )
                ],
              )
              ),
            SizedBox(height: 50,),
            // Lançamento cards
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                produtocard(0),
                produtocard(1),
                produtocard(2)
              ],
            ),
            SizedBox(height: 50,),
            // Nossa história card
            Padding(  
              padding: EdgeInsets.only(left: 400,right: 400),
              child: Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Nossa história",
                                style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              Text(
                                "Saiba mais sobre a história do seu café",
                                style: TextStyle(
                                  fontSize: 35,
                                ),
                                ),
                              SizedBox(height: 50,),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Historia()));
                                  },
                                  child: Container(
                                        width: 300,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(50)
                                        ),
                                        child: Text(
                                          "Saiba mais",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color:Colors.white
                                          ),
                                        ),
                                      ),
                                ),
                              )
                            ],
                          ),
                          SvgPicture.asset(
                            "images/logo-icon-vetorizado.svg",
                            height: 400,
                            width: 400,
                          )
                        ],
                      ),
                      ),
                  ),
            ),
            SizedBox(height: 50,),
            // Footer area
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.brown.shade200,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Café Pontes",style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  SizedBox(height: 20,),
                  Text("Idealizado por:",style: TextStyle(fontSize: 35,color: Colors.white),),
                  SizedBox(height: 20,),
                  Text("Rafael MK",style: TextStyle(fontSize: 25,color: Colors.white),),
                  SizedBox(height: 20,),
                  Text("Esther",style: TextStyle(fontSize: 25,color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container produtocard(int produto_index) {
    return Container(
            child: Column(
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProdutoPage(produto: produtos[produto_index])));
                    },
                    child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 270,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                          ),
                          child: Image.asset(produtos[produto_index].image_path,fit: BoxFit.cover,)
                        ),
                  ),
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.brown.shade100,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                        children: [
                          Text(produtos[produto_index].nome,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                          SizedBox(height: 15,),
                          Text(produtos[produto_index].descricao,softWrap: true,textAlign: TextAlign.justify,style: TextStyle(fontSize: 15),),
                          Spacer(),
                          Row(
                            children: [
                              Text("Valor\n${NumberFormat.simpleCurrency().format(produtos[produto_index].preco)}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                              Spacer(), 
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: (){
                                    cart.add_carrinho(produtos[produto_index]);
                                    setState(() {
                                      carItens += 1;
                                    });
                                  },
                                  child: Container(
                                        alignment: Alignment.center,
                                        width: 100,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.pink,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Text(
                                          "Adicionar",
                                          style: TextStyle(color: Colors.white,fontSize: 15),
                                        ),
                                      ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30,)
                        ],
                      ),
                    )
                )
              ],
            ),
          );
  }

}