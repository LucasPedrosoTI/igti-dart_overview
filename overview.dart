void main() {
  print("Hello");

  // Strings
  String nome = "Fulano"; // declaração tipada aspas simples ou duplas ok
  var nome2 = "Ciclano"; // declaração com inferência

  // Numbers
  int num1 = 1;
  int num2 = 2;
  double numDecimal = 3.14;
  num numClass = 3.47; // double and int father's class

  // Boolean
  bool typeBoolean = false;

  // Lists
  List listaGenerica = List(); // no type, tuple alike
  listaGenerica.add(num1);
  listaGenerica.add(nome);

  List<String> listaString = List(); // typed list
  listaString.add(nome);
  listaString.add(nome2);

  var list = [1, 2, 3];
  list.add(4); // ok
 // list.add("word"); // error

  const constante = 12;

  int parseInt = int.parse("12"); // or num.parse, double.parse, etc.

  for(var i = 0; i < list.length; i++){
    print(list[i]);

    if (list[i] % 2 == 1) {
      print('Odd number: ${list[i]}');
    } else if (list[i] % 2 == 0) {
      print('Even number: ${list[i]}');
    } else {
      print('nenhum dos casos');
    }
  }

  var x = 0;
  while (x < 4) {
    print('valor de x = $x');
    x++;
  } // do while is possible

  var letra = "c";

  switch (letra) {
    case "a":{
      print('letra a');
      break;
    }
    case "c": {
      print('letra c');
      break;
    }
    default: {
      print('nenhuma das letras');
    }
  }

  var map = Map();
  map['user'] = 'lps1010';
  map['passwrd'] = '123456';
  print(map);

  // or

  var account = {
    'name': 'lucas',
    'email': 'lp@mail.com'
  };

  somar(a, b){
    var result = a + b;
    print('Função somar: $a + $b = $result');
  }

somar(237, 456);

  optionalParameters ([name]){
    if(name != null){
      print('Hello $name');
      return;
    }
    print('Hello visitor');
  }

  optionalParameters();
  optionalParameters('Lucas');

  namedParameters({name, lastName}){ // they are also optional
    print('$name $lastName');
  }

  namedParameters();
  namedParameters(lastName: 'Pedroso', name: 'Lucas'); // the order does not matter, and must pass the name to call the func
  // Lucas Pedroso
  // print(nome + nome2); // basic concat
  // print('abc $nome abc ${num1 + num2}'); // template string
  // print(listaString);

  Pessoa person = Pessoa();
  person.nome = 'Lucas';

  person.ola();

  var person2 = Pessoa.set('Camila', 123456);
  person2.ola();
  person2._nome = 'Cássia';
  print(person2.nome);


  var aluno = Aluno();
  aluno.ola();

  var prof = Professor();
  prof.nome = 'Joe';
  prof.falar();
}

abstract class Humano {
  String nacionalidade;

  falar();
}

class Pessoa implements Humano {
  String _nome;
  int _cpf;

  Pessoa();

  Pessoa.set(String nome, int cpf){
    this._nome = nome;
    this._cpf = cpf;
  }

  void ola(){
    print('Meu nome é $_nome');
  }

  int get cpf => _cpf;

  set cpf(int value) {
    _cpf = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }

  @override
  String nacionalidade;

  @override
  falar() {
    print('Sou humano logo falo');
  }


}

class Aluno extends Pessoa {
  @override
  void ola() {
    print('Nome do aluno $nome');
  }
}

class Professor implements Pessoa {
  @override
  int _cpf;

  @override
  String _nome;

  @override
  int cpf;

  @override
  String nome;



  @override
  void ola() {
    print('Sou professor: $nome');
  }

  @override
  String nacionalidade;


  falar(){
    print('Profs tbm falam');
  }
}