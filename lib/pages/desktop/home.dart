import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int car_cont = 5;
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
            Center(
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
            ),
            SizedBox(height: 20,),
            Center(
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
            ),
            SizedBox(height: 50,)
          ],
        ),
      ),
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
                height: 450,
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
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                  ),
                  Text(
                    "Entrega ou retirada",
                    style: TextStyle(
                      fontSize: 80,
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
    Text car_text;
    if(car_cont > 9){
      car_text = Text("9+");
    }else{
      car_text = Text("$car_cont");
    }
    return AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 300,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          SizedBox(width: 30,),
          Text(
            "Home",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),
          Text(
            "Cardápio",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),
          Text(
            "Pedidos",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            ),
      ]),
      title: Text(
        "Café Pontes",
        style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
        ),
      centerTitle: true,
      actions: [
        Icon(Icons.person_2_rounded,color: Colors.black,),
        SizedBox(width: 30,),
        Stack(
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.shopping_bag_rounded, color: Colors.black),
            ),
            Positioned(
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
            )
          ],
        ),
        SizedBox(width: 30)
      ],
    );
  }
}
