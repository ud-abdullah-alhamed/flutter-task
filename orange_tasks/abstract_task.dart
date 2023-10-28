// Define an abstract class with an abstract method
abstract class Animal {
  void makeSound();
}

abstract class Swimmer {
  void swim();
}

class Dolphin implements Animal {
  @override
  void makeSound() {
    print('Dolphin makes a clicking sound.');
  }

  void swim() {
    print('Dolphin swims gracefully.');
  }
}

class Duck extends Animal implements Swimmer {
  @override
  void makeSound() {
    print('Duck quacks loudly.');
  }

  @override
  void swim() {
    print('Duck paddles in the water.');
  }
}

void main() {
  var dolphin = Dolphin();
  var duck = Duck();

  dolphin.makeSound();
  duck.makeSound();

  dolphin.swim();
  duck.swim();
}
