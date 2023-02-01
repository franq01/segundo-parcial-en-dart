import 'package:funciones5b/funciones5b.dart' as funciones5b;
import 'package:test/scaffolding.dart';

void main(List<String> arguments) {
  dividir();
  print('el numero es par? : ${esPar()}');
  saludo1('Francisco');
  String nombre = 'Brandon';
  saludo1(nombre);
  saludo2('Brandon', 2023);
  saludo3('Jovani', 2023);
  //regresan un valor nulo al no pasarles nada a los dos parametros
  String? nombre2;
  int? year2;
  saludo3(nombre2, year2);
  saludo4();
  saludo4('transito');
  //saludo4 (2024); se ´puede enviar al menos el argumento Striing
  saludo4('Cupertino', 2040);

  //llamando a la funcion saludo5 con parametros nombrados
  saludo5(); // como son opcionales los parametros
  saludo5(name: 'anacleto ');
  saludo5(year: 2023, name: 'Anastasia');
  saludo5(year: year2);
  saludo6(name: 'Cleto', mensaje: 'qué onda ');
  saludo6(name: 'que tal', mensaje: 'petronila');6
}

void dividir() {
  int n1 = 12;
  int n2 = 5;
  int cociente;
  int residuo;
  double resultado;
  resultado = n1 / n2;
  print('resultado de dividir $n1 entre $n2 es $resultado');

  cociente = n1 ~/ n2;
  print('cociente de la divicion entre $n1 y $n2 es $cociente');

  residuo = n1 % n2;
  print('residuo de la divicion entyre $n1 y $n2 es $residuo');
}

bool esPar() {
  //funcion que regresa el valor bool y no recibe parametros
  var numero = 15;
  if (numero % 2 == 0) {
    return (true);
  } else {
    return false;
  }
}

void saludo1(String nombre) {
  print('hola $nombre');
}

void saludo2(String name, int edad) {
  print('hola $name y estas en el año $edad');
}

void saludo3(String? name, int year) {
  //funcion con dos parametros funciponales
  //que ´podrian tener un valor nulo
  print('saludo3 Hola $name, estas en el año $year');
}

void saludo4([String name = 'desconocido', int year = 2023]) {
  //funcion con dos parametros opcionales
  //se le pueden enviar 2,1,0 parámetros
  print('saludo4 Hola $name, estás en el año $year');
}

void saludo5({String name = 'desconocido', int? year}) {
  //funcion con dos parametros nombrados
  //estos árametros son opcinales y se pueden enviar en cualquier orden.
  //se requieren inicializar o permitir valores null
  print('saludo5 Hola $name, estas en el año $year');
}

void saludo6({required String name, required String mensaje}) {
  //funcion con dos parametros ´poco definidos
  print('saludo6: $mensaje, $name');
}