/*Classe:
    Descrição de um conjunto de objetos que compartilha ações ou características;
    tem nome que diferencia das outras;
    tem atributos que são que são as características que a classe tem (as variáveis do objeto);
    tem métodos que são as operações, ou as ações que o objeto da classe pode fazer (funções do objeto);
*/

/*Herança:
    Princípio que permite criar uma nova classe apartir de uma já existente (subclasse);
    Exemplo:
        Class Vehicle{
            Vehicle(this.color);

            final String color;
            final String definition = 'Vehicle';
        }

        class Car extends Vehicle{
            Car(String color) : super(color);
        }

        class Hatch extends Car{
            Hatch(String color) : super(color);
        }
    
    Aqui, a classe Hatch é filha de Car e Car é filho de Vehicle;
    Assim, todas as propriedades, variáveis e métodos implementados em Vehicle
        estarão disponíveis em Car;
*/

/*Atributos Privados:
    São atributos que não podem ser acessados de fora da classe, declaramos "_" em dart;
*/

/*Métodos Get e Set:
    Eles podem pegar e alterar os valores dos atributos privados;
*/

