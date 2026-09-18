class Produto {
  String nome;
  String descricao;
  double preco;
  int qnt_disponivel;
  String image_path;
  bool disponivel;
  String tipo;

  Produto({
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.qnt_disponivel,
    required this.disponivel,
    required this.image_path,
    required this.tipo
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
      disponivel: true,
      tipo:"bebida"));
    produtos.add(Produto(
      nome: "Chocolate Bear",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 15.9, 
      qnt_disponivel: 5, 
      image_path: "images/bear_chocolate.jpg",
      disponivel: true,
      tipo:"bebida"));
    
    produtos.add(Produto(
      nome: "café gelado",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 19.99, 
      qnt_disponivel: 5, 
      image_path: "images/cafe_gelado.jpg",
      disponivel: true,
      tipo:"bebida"));
    
     produtos.add(Produto(
      nome: "café gato",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 25.99, 
      qnt_disponivel: 5, 
      image_path: "images/cat_cafe.jpg",
      disponivel: true,
      tipo:"bebida"));

    produtos.add(Produto(
      nome: "café gelado plus",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 25.99, 
      qnt_disponivel: 5, 
      image_path: "images/cafe_gelado_plus.jpg",
      disponivel: true,
      tipo:"bebida"));

    produtos.add(Produto(
      nome: "Caramel Bear",
      descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
      preco: 10, 
      qnt_disponivel: 5, 
      image_path: "images/bear_caramelo.jpg",
      disponivel: true,
      tipo:"bebida"));

    produtos.add(
      Produto(
        nome: "Pão de queijo",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
        preco: 5,
        qnt_disponivel: 100,
        image_path: "images/pao_queijo.jpg",
        disponivel: true,
        tipo: "pao"
      )
    );

    produtos.add(
      Produto(
        nome: "Pão fermentação natural",
        descricao: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sed erat vitae ligula sodales pulvinar at a risus. Aenean sollicitudin, quam nec ullamcorper rhoncus", 
        preco: 26.20,
        qnt_disponivel: 100,
        image_path: "images/sourdough.png",
        disponivel: true,
        tipo: "pao"
      )
    );
    return produtos;
  }

  List<Produto> get_produto_tipo(String tipo){
    List<Produto> produtos = get_produtos();
    List<Produto> data = [];
    for(var c in produtos){
      if(c.tipo == tipo){
        data.add(c);
      }
    }
    return data;
  }

}