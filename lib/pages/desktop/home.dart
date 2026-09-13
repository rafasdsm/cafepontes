import 'dart:ui';
import "package:flutter_svg/svg.dart";
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int car_cont = 0;
  String banner_location = "images/hero_banner.png";

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 251, 233, 100),
      appBar: navbar(car_cont),
      body: SingleChildScrollView(
        child: Column(
          children: [
            herobanner(banner_location),
            SizedBox(height: 20,),
            clickdeliverybuttons(),
            SizedBox(height: 20,),
            launchbebidas_txt_section(),
            SizedBox(height: 20,),
            launchbebidas_itens_section(),
            SizedBox(height: 60,),
            Center(
              child:Text(
                "Nossos pães mais famosos",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color:Colors.pink
                ),
                )
              ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 500,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(
                    "images/sourdough.png",
                    fit: BoxFit.cover,
                    ),
                ),
                SizedBox(width: 50,),
                Container(
                  width: 500,
                  height: 500,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(
                    "images/pao_queijo.jpg",
                    fit: BoxFit.cover,
                    ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 500,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(
                    "images/pao_baggete.jpg",
                    fit: BoxFit.cover,
                    ),
                ),
                SizedBox(width: 50,),
                Container(
                  width: 500,
                  height: 500,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Image.asset(
                    "images/brioche.jpg",
                    fit: BoxFit.cover,
                    ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.only(left: 300,right: 300),
              child: Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.brown.shade400,
                borderRadius: BorderRadius.circular(32)
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 30,right: 30),
                child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Sobre a nossa história",style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),),
                              Text(
                                "Saiba sobre como nos tornamos a maior\n empresa de cafeterias de Campinas",
                                style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color:Colors.white
                              ),),
                              SizedBox(height: 25,),
                              Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color:Colors.pink,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Text(
                                  "Saiba Mais",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 20
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 400,
                            height: 400,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500)
                            ),
                            child: Image.asset(
                              "images/logo.jpg",
                              fit:BoxFit.cover
                            ),
                          )
                        ],
                      ),
                )
              ),
              ),
            SizedBox(height: 60,),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                color:Colors.brown
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Text("Café pontes",style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color:Colors.white
                  ),),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "images/instagram.svg",
                        color:Colors.white,
                        width: 64,
                        height: 64,
                      ),
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        "images/youtube.svg",
                        color:Colors.white,
                        width: 64,
                        height: 64,
                      ),
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        "images/linkedin.svg",
                        color:Colors.white,
                        width: 64,
                        height: 64,
                      ),
                      SizedBox(width: 30,),
                      SvgPicture.asset(
                        color:Colors.white,
                        "images/whatsapp.svg",
                        width: 64,
                        height: 64,
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Politica de privacidade",style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 20,
                        color: Colors.white
                      ),),
                      SizedBox(width: 20,),
                      Text("Politica de troca",style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 20,
                        color: Colors.white
                      ),),
                      SizedBox(width: 20,),
                      Text("Termos de uso",style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ],
                  ),
                  SizedBox(height: 50,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Feito por Rafael mil grau",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:Colors.pink
                        ),),
                        SizedBox(width: 20,),
                        Text(
                          "Ajudado por Esther dois grais",
                          style: TextStyle(
                            color: Colors.lightGreenAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                          )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Center launchbebidas_itens_section() {
    return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                launch_container("images/bear_caramelo.jpg"),
                SizedBox(width: 50,),
                launch_container("images/bear_chocolate.jpg"),
                SizedBox(width: 50,),
                launch_container("images/bear_morango.jpg"),
              ],
            )
          );
  }

  Center launchbebidas_txt_section() {
    return Center(
            child: Column(
              children: [
                Text(
                "Lançamento!",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
                ),
                Text(
                "Bear Coffe",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink
                ),
                ),
              ],
            )
          );
  }

  Stack launch_container(String image_path) {
    return Stack(
              children: [
                Container(
                  width: 200,
                  height: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Image.asset(
                    image_path,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
  }

  Row clickdeliverybuttons() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Text(
                  "Clique e retire",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.white
                  ),
                  ),
              ),
              SizedBox(width: 30,),
              Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: BoxBorder.all(
                    color: Colors.pink,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(32)
                ),
                child: Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.pink
                  ),
                  ),
              ),
            ],
          );
  }

  Stack herobanner(String banner_location) {
    /*
    Futuro:
      - fazer com que a imagem se altere
        - tanto com um tempo determinado
        - tanto com um botão para ir para o próximo hero
      - ambos tem que trocar tanto a imagem quanto o texto
    */
    return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                child: Image.asset(
                  banner_location,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 30,
                left: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    "Peça online!",
                    style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  ),
                  Text(
                    "Entrega ou retirada",
                    style: TextStyle(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      color:Colors.pink
                    ),
                  ),
                  ],
                )
                )
            ],
          );
  }

  AppBar navbar(int car_cont) {
    /*
    Futuro:
      - Vincular o modelo de carrinho ao carrinho
      - Adicionar os links para as outras páginas
    */ 
    bool iscar = false;
    Text car_text = Text("");
    if(car_cont >0){
      iscar = true;
      if(car_cont > 9){
        car_text = Text("9+");
      }else{
        car_text = Text("$car_cont");
    }}else{
      iscar = false;
    };
    return AppBar(
      backgroundColor: Colors.brown,
      leadingWidth: 300,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          SizedBox(width: 30,),
          Text(
            "Home",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),
            ),
          Text(
            "Cardápio",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),
            ),
          Text(
            "Pedidos",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),
            ),
      ]),
      title: Text(
        "Café Pontes",
        style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color:Colors.white
            ),
        ),
      centerTitle: true,
      actions: [
        Icon(Icons.person_2_rounded,color: Colors.white,),
        SizedBox(width: 30,),
        Stack(
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_bag_rounded, color: Colors.white),
            ),
            if(iscar)cart_bubble(car_text)
          ],
        ),
        SizedBox(width: 30)
      ],
    );
  }

  Positioned cart_bubble(Text car_text) {
    return Positioned(
            right: -1,
            bottom:-1,
            child: Container(
              width: 20,
              height: 20,
              alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.red,
            ),
            child: car_text,
          ),
          );
  }
}
