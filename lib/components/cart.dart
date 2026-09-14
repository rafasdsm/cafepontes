import 'produto.dart';

class Cart {
  static final Cart _instance = Cart._internal();
  factory Cart() => _instance;
  Cart._internal();

  List<Produto> carrinho = [];

  void add_carrinho(Produto produto){
    carrinho.add(produto);
  }
}