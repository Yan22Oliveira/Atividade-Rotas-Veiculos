class Montadora {

  String? id;
  String nome = "";
  String imagem = " ";

  Montadora({
    this.id,
    required this.nome,
    required this.imagem,
  });

  Montadora.create(){
    id = "";
    nome = "";
    imagem = "";
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['imagem'] = this.imagem;
    return data;
  }

  Montadora.fromJson(Map<String, dynamic> json, String key) {
    id = key;
    nome = json["nome"];
    imagem = json["imagem"];
  }

}