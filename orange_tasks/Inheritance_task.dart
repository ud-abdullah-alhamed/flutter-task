class Vehicle {
  String brand;
  int year;

  Vehicle(this.brand, this.year);

  void start() {
    print('The $brand vehicle is starting.');
  }

  void stop() {
    print('The $brand vehicle has stopped.');
  }
}

class Car extends Vehicle {
  int numberOfDoors;

  Car(String brand, int year, this.numberOfDoors) : super(brand, year);

  @override
  void start() {
    print('The $brand car with $numberOfDoors doors is starting.');
  }

  void honk() {
    print('The $brand car is honking!');
  }
}

class Bicycle extends Vehicle {
  int numberOfGears;

  Bicycle(String brand, int year, this.numberOfGears) : super(brand, year);

  @override
  void start() {
    print('The $brand bicycle with $numberOfGears gears is starting.');
  }

  void pedal() {
    print('The $brand bicycle is pedaling.');
  }
}

void main() {
  Car myCar = Car('Toyota', 2022, 4);
  Bicycle myBicycle = Bicycle('Trek', 2023, 21);

  myCar.start();
  myCar.honk();
  myCar.stop();

  myBicycle.start();
  myBicycle.pedal();
  myBicycle.stop();
}
