import 'dart:ui';
import "package:flutter_svg/svg.dart";
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int car_cont = 0;
  String banner_location = "images/hero_banner.png";

  @override
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
            paes_section(),
            SizedBox(height: 50,),
            historia_section(),
            SizedBox(height: 60,),
            footer_section()
          ],
        ),
      ),
    );
  }

  Column paes_section() {
    return Column(
            children: [
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
            ],
          );
  }

  Padding historia_section() {
    return Padding(
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
            );
  }

  Container footer_section() {
    return Container(
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
          );
  }

  Center launchbebidas_itens_section() {
    String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dignissim, orci quis aliquet consectetur, elit erat lobortis ex, eu sagittis tortor purus sed felis. Suspendisse maximus elit vel orci laoreet ultricies. Integer sodales dictum lorem eget porttitor. Etiam pretium in erat eget sollicitudin. Proin blandit finibus sapien. Nullam finibus magna sed ipsum dictum malesuada. Nullam posuere nulla augue, ac elementum lorem tempus ut. Nunc non augue nulla. Sed vel aliquet turpis, sed efficitur ipsum. Aenean efficitur ornare massa et ultrices. Etiam dictum porta justo eget elementum. Etiam malesuada quam porttitor, molestie urna quis, auctor lorem.";
    List<String> names = ["Caramel bear","Chocolate bear","Strawberry bear"];
    return Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                launch_container("images/bear_caramelo.jpg",text,names[0]),
                SizedBox(width: 50,),
                launch_container("images/bear_chocolate.jpg",text,names[1]),
                SizedBox(width: 50,),
                launch_container("images/bear_morango.jpg",text,names[2]),
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

  Container launch_container(String imagePath,String description,String name) {
    /*
    Adicionar:
      - Quando clicar no produto, ir para ele
    */
    return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: null,
                      child: Container(
                      width: 250,
                      height: 300,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32)
                      ),
                      child: Image.asset(
                        imagePath,
                        fit:BoxFit.cover
                      ),
                    ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          description,
                          softWrap: true,
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
  }

  Row clickdeliverybuttons() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: Container(
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
                ),
              ),
              SizedBox(width: 30,),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
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
              ),
                ),
              )
            ],
          );
  }

  Stack herobanner(String bannerLocation) {
    /*
    Futuro:
      - fazer com que a imagem se altere
        - tanto com um tempo determinado
        - tanto com um botão para ir para o próximo hero
      - ambos tem que trocar tanto a imagem quanto o texto
    */
    return Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 600,
                child: Image.asset(
                  bannerLocation,
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

  AppBar navbar(int carCont) {
    /*
    Futuro:
      - Vincular o modelo de carrinho ao carrinho
      - Adicionar os links para as outras páginas
    */ 
    bool iscar = false;
    Text carText = Text("");
    if(carCont >0){
      iscar = true;
      if(carCont > 9){
        carText = Text("9+");
      }else{
        carText = Text("$carCont");
    }}else{
      iscar = false;
    }
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
            if(iscar)cart_bubble(carText)
          ],
        ),
        SizedBox(width: 30)
      ],
    );
  }

  Positioned cart_bubble(Text carText) {
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
            child: carText,
          ),
          );
  }
}
