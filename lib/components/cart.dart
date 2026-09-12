import 'produto.dart';

class Cart {
  List<Produto> carrinho = [];
  void add_carrinho(Produto produto){
    carrinho.add(produto);
  }  
}