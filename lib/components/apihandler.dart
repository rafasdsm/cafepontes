import 'package:cafepontes/components/produto.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

String base_url = "http://127.0.0.1:8000";

Future <String> pegar_tipo(int id) async{
  var response = await http.get(
    Uri.parse(base_url+'/procurar_categoria/$id')
  );
  dynamic data = jsonDecode(response.body)["message"];
  return data[1];
}

Future <List<Produto>> pegar_produtos() async{
  var response = await http.get(
    Uri.parse(base_url+'/ler_tabela/produtos'),
  );

  List<dynamic> data = jsonDecode(response.body)["message"];
  List<Produto> produtos = [];

  for(var c in data){
    produtos.add(
      Produto(
        nome: c[2],
        descricao: c[3],
        preco: c[4],
        qnt_disponivel: c[6],
        disponivel: c[5],
        image_path: c[8], 
        tipo: await pegar_tipo(c[1])
      )
    );
  }
  
  return produtos;
}
