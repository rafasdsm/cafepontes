class Produto {
  String nome;
  String descricao;
  double preco;
  int qnt_disponivel;
  bool disponivel;

  Produto({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.qnt_disponivel,
    required this.disponivel
  });
}

class Produtos{
  List<Produto> produtos = [];

  Produtos({
    required this.produtos
  });

  List<Produto> get_produtos(){
    /*
    Futuro:
      - Colocar a requisição da API do python
    */
    return produtos;
  }


}