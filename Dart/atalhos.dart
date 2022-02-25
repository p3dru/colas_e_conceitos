///Como passar um função para outra como argumento;

int executar(int valor, int Function(int) f){ ///usar Function com f maiúsculo
    return f(valor);                          ///retorna o valor para a function
}

int quadrado (int numero) {return numero * numero;} ///funções com uma linha
int triplo (int numero) {return 3 * numero;}        ///funções com uma linha

void main(){
    print(executar(2, quadrado));                   ///chama a função
    print(executar(3, triplo));                     ///chama a função
}


///Como passar uma lista como argumento
int somaTotal(List<int> listaNumero){           ///List<int> lista e indicando o tip
  int soma = 0;
  for(int i = 0; i < listaNumero.length; i++){  ///faz o for para cada numero recebido
    soma += listaNumero[i];
  }
  return soma;                                  ///retorna a soma
}

void main(){
  List<int> listaNumeros = [1, 2, 3, 4, 5, 6];  ///inicia a lista
  int somatorio = somaTotal(listaNumeros);
  
  print("O somatório é de $somatorio");
  
}

///Para passar funcoes que trabalham com listas como parâmetros 
int recebeFuncoes(var lista, int Function(List<int>) f){        ///em Function tem o List<int> pois é o tipo da lista e antes, o int é o retorno
  return f(lista);
}

int somaTotal(List<int> listaNumero){                           ///tratamento da List
  int soma = 0;
  for(int i = 0; i < listaNumero.length; i++){
    soma += listaNumero[i];
  }
  
  return soma;
}

int multiplicacaoTotal(List<int> listaNumero){
  int total = 1;
  for(int i = 0; i < listaNumero.length; i++){
    total *= listaNumero[i];
  }
  
  return total;
}

void main(){
  List<int>  listaNumeros = [1, 2, 3, 4, 5, 6];
  
  print("O valor da soma de todos os elementos é: ${recebeFuncoes(listaNumeros, somaTotal)}");
  print("O valor da multiplicação de todos os elementos é: ${recebeFuncoes(listaNumeros, multiplicacaoTotal)}");
}

///Como usar arrow functions
var multiplicar = (int a, int b) => a * b;
///primeiro o tipo da função depois o nome entre parêntes as variáveis e depois da arrow => a expressão

///Como passar parâmetros opcionais em dart:

String nomeCompleto(String nome, String sobrenome,[String? tratamento]){
  /*os [] permitem que você omita um atributo caso seja esquecido
  o String? indica o tipo da variável e como tem o ? permite que seja nulo;
  */
  String t = tratamento ?? "Senhor";
  ///na linha acima, o tratamento ?? verifica se tratamento é nulo e se sim, atribui o "Senhor";
  return "${t} $nome $sobrenome";
}

void main(){
  print(nomeCompleto("João", "Pedro"));
  ///Vai printar "Senhor João Pedro"
}

///Para retornar intervalos:
bool noIntervalo({int valor = 0, int min = 0, int max = 10}){
  return min <= valor && valor <= max;
}

void main(){
  print(noIntervalo(valor: 5)) ///true por retornar o valor bool
}

///Para que possamos inserir valores nomeados na função, basta colocar entre {}:
bool noIntervalo({int valor = 0, int min = 0, int max = 10}){
  return min <= valor && valor <= max;
}

void main(){
  print(noIntervalo(min: 1, max: 10, valor: 5)) ///true por retornar o valor bool
}

///Funções anônimas:
void main(){
  var soma = (int: a, int: b){
    return a + b;
  }
  
  print(soma(2, 4))
}

  ///exemplo forEach:
  void main(){
    List numeros = [1, 2, 3, 4];

    numeros.forEach((numero)){ ///aplica o dobro para cada numero
      var dobro = numero * 2;
      print(dobro);
    }
  }

///Classes em dart:
class Alo{
  String nome;

  Alo(string nome){
    this.nome = nome;
  }

  void dizerAlo(){
    print("Alô, " + this.nome);
  }
}

  ///Podemos instanciar um classe assim:
  void main(){
    Alo alo = Alo("João") /// classe nome_da_variavel = classe("valor do atributo")
    alo.dizerAlo(); ///executa o método
  }

///Construtores nomeados: basta adicionar o . e o nome na frente
class Pessoa{
  Pessoa(){
    print("Construtor normal");
  }

  Pessoa.boboconstrutor(){
    print("Construtor 2");
  }
}

void main(){
  Pessoa p1 = new Pessoa();
  Pessoa p2 = new Pessoa.boboconstrutor();
}

///Palavra static:
/// bloqueia o atributo à classe e não é interferido pelo objeto
class Empregado{
  static int contador = 0; ///Define contador como atributo da classe empregado
  String nome;

  Empregado(String nome){
    Empregado.contadorr++;
    this.nome = nome;
  }
}

void main(){
  Empregado e1 = Empregado("João");
  print(Empregado.contador); ///1 chama o contador sem instanciar o contador como parte de e1

  Empregado e1 = Empregado("Pedro");
  print(Empregado.contador); ///2 chama o contador sem instanciar o contador como parte de e2

}

///Métodos de acesso Get e Set: Usados para ler e escrever em atributos;
///Para atributos privados usa-se o "_" antes do nome; 
class Post{
  String _text = "";     ///define como atributo privado 
  Post(String _text) {this._text = _text;}   ///o post é iniciado com o argumento texto e {o costrutoe é feito aqui}

  String get text{        ///pega/acessa o texto como se fosse público
    return this._text;    ///retorna como argumento
  }

  set text(String text){  ///altera o text para alteração
    this._text = text;    ///._text = recebe o texto publico e o torna privado
  }
}

void main(){
  Post p = Post("Texto do Post"); ///onde p é privado 
  p.text = "Novo Texto";          ///onde p é transformado em novo texto
  print(p.texto);
}