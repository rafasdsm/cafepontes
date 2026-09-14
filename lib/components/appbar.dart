import "package:cafepontes/pages/desktop/historia.dart";
import "package:cafepontes/pages/desktop/home.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

AppBar appbar_section(car_itens,context) {
    return AppBar(
      automaticallyImplyLeading: false,
      automaticallyImplyActions: false,

      elevation: 5,

      backgroundColor: Colors.brown.shade100,

      toolbarHeight: 55,

      titleSpacing: 0,
      

      title: SingleChildScrollView(

        scrollDirection: Axis.horizontal,

        child: Row(

          mainAxisSize: MainAxisSize.min,

          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            SizedBox(width: 20),

            SvgPicture.asset(

              "images/logo-icon-vetorizado.svg",

              width: 32,

              height: 32,

            ),

            SizedBox(width: 10),

            Text(

              "Café Pontes",

              style: TextStyle(

                fontSize: 24,

                fontWeight: FontWeight.bold,

              ),

            ),

            SizedBox(width: 50),

            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => HomePage())));
                },
                child: Text("Inicio",style: TextStyle(decoration: TextDecoration.underline),),
              ),
            ),

            SizedBox(width: 24),

            Text("Cardápio"),

            SizedBox(width: 24),

            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Historia())));
                },
                child: Text("Sobre nós",style: TextStyle(decoration: TextDecoration.underline),),
              ),
            ),

            SizedBox(width: 24),

            Text("Meus pedidos"),

          ],

        ),

      ),

      actions: [

        Stack(

          children: [

            Icon(Icons.shopping_bag_rounded,size: 32,),

            car_itens > 0 ?Positioned(

              top: -1,

              right: -1,

              child: Container(

                alignment: Alignment.center,

                width: 20,

                height: 20,

                decoration: BoxDecoration(

                  color: Colors.red,

                  borderRadius: BorderRadius.circular(50)

                ),

                child: car_itens > 9 ? Text("9+",style:TextStyle(color: Colors.white),) : Text("$car_itens",style:TextStyle(color: Colors.white),),

              ),

              ): Text(""),

          ],

        ),

        SizedBox(width: 20,)

      ],

    );

  }
