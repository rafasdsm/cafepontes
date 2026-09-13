import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int qnt = 1;
  double  preco = 12.90;
  bool finishable = false;
  String size = "";
  Map<String,bool> tamanho = {
    "P":false,
    "M":false,
    "G":false
  };
  Map<String,double> tamanho_preco ={
    "P":0,
    "M":4,
    "G":8
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: Container(
                  alignment: Alignment.centerRight,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      Text(
                        'Voltar',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 100),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            MouseRegion(
              cursor: finishable ? SystemMouseCursors.click: SystemMouseCursors.basic,
              child: GestureDetector(
                child: Container(
                  alignment:Alignment.center,
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:finishable? Colors.green:Colors.grey,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text("Adicionar ao carrinho",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Colors.white
                      ),),
                      Icon(Icons.arrow_right_alt_outlined,color:Colors.white),
                      SizedBox(width: 20,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            // produto imagem
            Container(
              width: 300,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: Image.asset(
                    "images/cafe_gelado_plus.jpg",
                    fit:BoxFit.cover
                  ),
                ),
            SizedBox(height: 50,),
            // produto opções de tamanho
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // botão do tamanho  
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      size = "P";
                      setState(() {
                        if(tamanho["P"] == false){
                          tamanho["P"] = true;
                        }else{
                          tamanho["P"] = false;
                        }
                        tamanho["M"] = false;
                        tamanho["G"] = false;
                        finishable = checkaddcart_(tamanho);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: tamanho["P"] == false ?Colors.grey.shade200: Colors.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "images/cafe-svgrepo-com.svg",
                            width: 64,
                            height: 64,
                            ),
                          Text(
                            "Tamanho P\n(200ml)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black
                            ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 30,),
                // botão do tamanho M
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      size = "M";
                      setState(() {
                        tamanho["M"] == false? tamanho["M"] = true: tamanho["M"] = false;
                        tamanho["P"] = false;
                        tamanho["G"] = false;
                        finishable = checkaddcart_(tamanho);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: tamanho["M"] == false ? Colors.grey.shade200: Colors.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "images/cafe-svgrepo-com.svg",
                            width: 64,
                            height: 64,
                            ),
                          Text(
                            "Tamanho M\n(350ml)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black
                            ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 50,),
                // botão tamanho G
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: (){
                      size = "G";
                      setState(() {
                        tamanho["G"] == false? tamanho["G"] = true: tamanho["G"] = false;
                        tamanho["M"] = false;
                        tamanho["P"] = false;
                        finishable = checkaddcart_(tamanho);
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: tamanho["G"] == false? Colors.grey.shade200: Colors.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "images/cafe-svgrepo-com.svg",
                            width: 64,
                            height: 64,
                            ),
                          Text(
                            "Tamanho G\n(400ml)",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Colors.black
                            ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
            Center(
              child: Text("Preço: ${NumberFormat.compactSimpleCurrency().format(preco*qnt+(tamanho_preco[size] ?? 0))}"),
            ),
            SizedBox(height: 50,),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color:Colors.grey.shade200,
                borderRadius: BorderRadius.circular(32)
              ),
              child: Row(
                spacing: 5,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      qnt += 1;
                    });
                  }, icon: Icon(Icons.add)),
                  Text("$qnt un"),
                  IconButton(onPressed: (){
                    setState(() {
                      qnt > 1 ? qnt -= 1: null;
                    });
                  }, icon: Icon(Icons.remove)),
                ],
              ),
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }
  bool checkaddcart_(Map<String,bool> map){
    if(map["P"] == true || map ["G"] == true || map["M"] == true){
      return true;
    }
    else{
      return false;
    }
  }
}
