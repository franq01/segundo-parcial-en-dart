import 'dart:ffi';

import 'package:mixins3/mixins3.dart' as mixins3;

abstract class Animal {
  animal() => print('soy un animal');
}

abstract class Mamifero extends Animal {
  mamifero() => print('soy un mamifero');
}

abstract class Ave extends Animal {
  ave() => print('yo soy un ave');
}

abstract class Pez extends Animal {
  pez() => print('yo soy un pez');
}

abstract class Caminar {
  caminar() => print('puedo caminar');
}

abstract class Nadar {
  nadar() => print('puedo nadar');
}

abstract class Volar {
  volar() => print('puedo volar');
}

//// mamiferos ////////////////////////////////
class Murcielago extends Mamifero with Caminar, Volar {
  murcielago() => print('yo soy un murcielago');
}

class Delfin extends Mamifero with Nadar {
  delfin() => print('yo soy un delfin');
}

class Gato extends Mamifero with Caminar {
  gato() => print('yo soy un mamifero');
}

///////////// aves /////////////////////////
class Pato extends Ave with Caminar, Volar, Nadar {
  pato() => print('yo soy un Pato');
}

class Paloma extends Ave with Volar, Caminar {
  paloma() => print('yo soy una paloma');
}

///////////////peces ////////////////////////

class Tiburon extends Pez with Nadar {
  tiburon() => print('yo soy un tiburon');
}

class Pezvolador extends Pez with Nadar, Volar {
  pezvolador() => print(
      'yo soy un pez volador ( en realidad no vuelo solo planeo en el aire 😁)');
}

void main(List<String> args) {
  ////////////////////////mamiferos//////////////////////
  Murcielago murcielago = new Murcielago();
  murcielago.murcielago();
  murcielago.animal();
  murcielago.caminar();
  murcielago.mamifero();
  murcielago.volar();

  Delfin delfin = new Delfin();
  delfin.mamifero();
  delfin.delfin();
  delfin.nadar();

  Gato gato = new Gato();
  gato.animal();
  gato.mamifero();
  gato.gato();
  gato.caminar();

  ///////////////////////////aves///////////////////////////
  Paloma paloma = new Paloma();
  paloma.animal();
  paloma.ave();
  paloma.paloma();
  paloma.caminar();
  paloma.volar();

  Pato pato = new Pato();
  pato.animal();
  pato.ave();
  pato.pato();
  pato.caminar();
  pato.nadar();
  pato.volar();

  ////////////////////////peces///////////////////!
  Tiburon tiburon = new Tiburon();
  tiburon.animal();
  tiburon.pez();
  tiburon.tiburon();
  tiburon.nadar();

  Pezvolador pezvolador = new Pezvolador();
  pezvolador.animal();
  pezvolador.pez();
  pezvolador.pezvolador();
  pezvolador.nadar();
  pezvolador.volar();
}
