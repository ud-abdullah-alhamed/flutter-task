import 'dart:io';

void main() {
  while (true) {
    // Get user input for the first number
    stdout.write("Enter the first number: ");
    double firstNumber = double.parse(stdin.readLineSync()!);

    // Get user input for the operator
    stdout.write("Enter an operator (+, -, *, /): ");
    String operator = stdin.readLineSync()!;

    // Get user input for the second number
    stdout.write("Enter the second number: ");
    double secondNumber = double.parse(stdin.readLineSync()!);

    double result;

    // Perform the calculation based on the operator
    switch (operator) {
      case '+':
        result = firstNumber + secondNumber;
        break;
      case '-':
        result = firstNumber - secondNumber;
        break;
      case '*':
        result = firstNumber * secondNumber;
        break;
      case '/':
        if (secondNumber != 0) {
          result = firstNumber / secondNumber;
        } else {
          print("Error: Division by zero is not allowed.");
          continue;
        }
        break;
      default:
        print("Invalid operator. Please use +, -, *, or /.");
        continue;
    }

    // Display the result
    print("Result: $firstNumber $operator $secondNumber = $result");

    // Ask the user if they want to perform another calculation
    stdout.write("Do you want to perform another calculation? (yes/no): ");
    String continueCalculation = stdin.readLineSync()!.toLowerCase();
    if (continueCalculation != "yes") {
      break;
    }
  }

  print("Thank you for using the Basic Calculator!");
}
