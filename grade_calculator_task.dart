import 'dart:io';

void main() {
  stdout.write("Enter The Student's score:");
  double score = double.parse(stdin.readLineSync()!);

  String grade = calculateGrade(score);
  print("the student score is :$grade");
}

calculateGrade(double score) {
  if (score > 90) {
    return 'A';
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'F';
  }
}
