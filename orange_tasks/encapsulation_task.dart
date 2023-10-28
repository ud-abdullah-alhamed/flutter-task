class Person {
  String _name;
  int _age;
  String _email;

  Person(this._name, this._age, this._email);

  String get name => _name;
  int get age => _age;
  String get email => _email;

  set name(String name) {
    if (name.isNotEmpty) {
      _name = name;
    }
  }

  set age(int age) {
    if (age >= 0 && age <= 150) {
      _age = age;
    }
  }

  set email(String email) {
    if (isValidEmail(email)) {
      _email = email;
    }
  }

  bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegExp.hasMatch(email);
  }
}

void main() {
  var person = Person("John Doe", 30, "johndoe@example.com");

  print("Original Name: ${person.name}");
  print("Original Age: ${person.age}");
  print("Original Email: ${person.email}");

  person.name = "Alice";
  person.age = 25;
  person.email = "alice@example.com";

  print("Updated Name: ${person.name}");
  print("Updated Age: ${person.age}");
  print("Updated Email: ${person.email}");
}
