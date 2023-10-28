import 'dart:io';

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  stdout.write(
      "Enter a positive integer to calculate the nth Fibonacci number: ");
  int n = int.parse(stdin.readLineSync().toString());

  if (n < 0) {
    print("Please enter a positive integer.");
  } else {
    int result = fibonacci(n);
    print(
        "The $n${n == 1 ? "st" : n == 2 ? "nd" : "th"} Fibonacci number is: $result");
  }
}
