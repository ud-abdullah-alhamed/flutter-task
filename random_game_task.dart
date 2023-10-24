// ignore_for_file: unused_local_variable

import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int minNum = 1;
  int maxNum = 100;
  int randomNumber = minNum + random.nextInt(maxNum - minNum + 1);
  print("guess  Number between 0 and 100");
  int attempts = 0;
  int userNum;
  do {
    print("Enter your guess: ");
    userNum = int.tryParse(stdin.readLineSync()!)!;
    attempts++;
    if (userNum < randomNumber) {
      print("low. Try again!");
    } else if (userNum > randomNumber) {
      print("high. Try again!");
    }
  } while (userNum != randomNumber);

  print("You've guessed the correct number ($randomNumber) ");
}
