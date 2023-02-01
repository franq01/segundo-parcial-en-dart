import 'dart:ffi';

import 'package:mixins2/mixins2.dart' as mixins2;

void main(List<String> arguments) {
  // instaciando y buscando un objeto d la clase gato
  Gato garfield = Gato();
  garfield.yoSoy(); // funcion de la clase gato
  garfield.infoAnimal(); // funcion de la clase Animal
  garfield.infoMamifero(); //funcion de la clase Mamifero
  garfield.caminar();

  Paloma Bra = Paloma();
  Bra.yoSoy();
  Bra.infoAnimal();
  Bra.infoAve();
  Bra.volar();
  Bra.caminar(); // funcion de la clase Caminante
}

abstract class Animal {
  void infoAnimal();
}

abstract class Mamifero extends Animal {
  void infoMamifero();
}

abstract class Ave extends Animal {
  void infoAve();
}

abstract class Pez extends Animal {
  void infoPez();
}

class Caminante {
  void caminar() => print('puedo caminar');
}

class Nadador {
  void nadar() => print('puedo nadar');
}

class Volador {
  void volar() => print('puedo volar');
}

//creacion de las clases de los tipos especificos de animales
class Gato extends Mamifero with Caminante {
  @override
  void infoMamifero() {
    print('soy un mamifero');
  }

  @override
  Void infoAnimal() {
    print('soy un animal');
  }

  @override
  Void infoMamifero() {
    print('soy un mamifero');
  }

  //metodo de la clase gato
  void yoSoy() => print('yo soy un michi');
}

class Paloma extends Ave with Caminante, Volador {
  @override
  Void infoMamifero() {
    print('soy un animal');
  }

  @override
  Void infoAve() {
    print('soy un Ave');
  }

  //metodo de la clase ave
  void yoSoy() => print('yo soy una paloma');
}
