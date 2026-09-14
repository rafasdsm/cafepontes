import 'package:cafepontes/components/appbar.dart';
import 'package:cafepontes/components/cart.dart';
import 'package:flutter/material.dart';

class Historia extends StatelessWidget {
  Historia({super.key});

  @override
  Widget build(BuildContext context) {
    Cart cart = Cart();
    int car_itens = cart.carrinho.length;
    return Scaffold(
      appBar: appbar_section(car_itens, context),
      body: Text("Historia"),
    );
    
  }
}