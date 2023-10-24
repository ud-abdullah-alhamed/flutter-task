import 'dart:io';

void main() {
  stdout.write("Enter an integer: ");
  int num1 = int.parse(stdin.readLineSync()!);

  if (num1 % 2 == 0) {
    print("$num1 is even.");
  } else {
    print("$num1 is odd.");
  }
}
