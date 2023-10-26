import 'dart:io';

void main() {
  double num1, num2;
  String operator;

  print("Enter the first number: ");
  num1 = double.parse(stdin.readLineSync().toString());

  print("Enter the second number: ");
  num2 = double.parse(stdin.readLineSync().toString());

  print("Enter the operator (+, -, *, /): ");
  operator = stdin.readLineSync().toString();

  double result;

  if (operator == '+') {
    result = num1 + num2;
  } else if (operator == '-') {
    result = num1 - num2;
  } else if (operator == '*') {
    result = num1 * num2;
  } else if (operator == '/') {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print("Error: Division by zero is not allowed.");
      return;
    }
  } else {
    print("Error: Invalid operator");
    return;
  }

  print("Result: $result");
}
