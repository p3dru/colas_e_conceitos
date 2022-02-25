class Pessoa{                             ///inicia uma classe chamada Pessoa
  
  String nome = "";                       ///define um atributo chamado nome
  int idade = 0;                          ///define um atributo chamado idade
  String profissao = "";                  ///define um atributo chamado profissao
  int anosDeExperiencia = 0;              ///define um atributo chamado anosDeExperiencia
  String cidade = "";                     ///define um atributo chamado de cidade
  
  Pessoa({required this.nome, required this.idade, required this.profissao, required this.anosDeExperiencia, required this.cidade});
  ///acima, usamos o construtor (required) com o this.atributo, onde this referencia o atributo no qual ele está sendo iniciado 
  
  void checarQuantidadeDeAnosTrabalhados(){        ///cria um método para a pessoa iniciada por uma função
    if(this.anosDeExperiencia >= 3){
      print("Queremos que você trabalhe conosco por ter $anosDeExperiencia anos de experiência");
    }
    else{
      print("Não o escolheremos por não ter no mínimo 3 anos de experiência");
    }
  }
  
  void checarProfissao(){                          ///cria um método para a pessoa iniciada por uma função
    if(this.profissao == "Programador" || this.profissao == "programador"){
      print("Escolheremos você por ser programador");
    }
    else{
      print("Não escolheremos você por você não ser programador");
    }
  }
}

void main(){                                      ///inicia o programa principal
  Pessoa pessoa1 = Pessoa(nome: "Mauricio", idade: 34, profissao: "Corredor", anosDeExperiencia: 4, cidade: "Teresina");    ///cria uma pessoa1 com todos os atributos da pessoa
  Pessoa pessoa2 = Pessoa(nome: "Marcia", idade: 23, profissao: "Programador", anosDeExperiencia: 2, cidade: "Teresina");   ///cria uma pessoa2 com todos os atributos da pessoa
  Pessoa pessoa3 = Pessoa(nome: "Paula", idade: 21, profissao: "Vendedora", anosDeExperiencia: 3, cidade: "Teresina");      ///cria uma pessoa3 com todos os atributos da pessoa
  Pessoa pessoa4 = Pessoa(nome: "Ricardo", idade: 15, profissao: "Concursada", anosDeExperiencia: 2, cidade: "Teresina");   ///cria uma pessoa4 com todos os atributos da pessoa
  
  pessoa1.checarProfissao();                     ///executa o método checarProfissao em relação a pessoa 1
  pessoa1.checarQuantidadeDeAnosTrabalhados();   ///executa o método checarQuantidadeDeAnosTrabalhados em relação a pessoa 1
}