class Produto {
  String nome;
  String descricao;
  double preco;
  int qnt_disponivel;
  String image_path;
  bool disponivel;

  Produto({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.qnt_disponivel,
    required this.disponivel,
    required this.image_path
  });
}

class Produtos{
  List<Produto> produtos = [];

  List<Produto> get_produtos(){
    /*
    Futuro:
      - Colocar a requisição da API do python
    */
    produtos.add(Produto(
      nome: "Strawberry Bear",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 12.9, 
      qnt_disponivel: 5, 
      image_path: "images/bear_morango.jpg",
      disponivel: true));
    produtos.add(Produto(
      nome: "Chocolate Bear",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 15.9, 
      qnt_disponivel: 5, 
      image_path: "images/bear_chocolate.jpg",
      disponivel: true));
    produtos.add(Produto(
      nome: "Caramel Bear",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 10, 
      qnt_disponivel: 5, 
      image_path: "images/bear_caramelo.jpg",
      disponivel: true));
    return produtos;
  }


}