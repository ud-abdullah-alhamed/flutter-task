Function outerFunction(int x) {
  return (int y) {
    return x + y;
  };
}

void main() {
  var addFive = outerFunction(5);

  int result1 = addFive(3);
  int result2 = addFive(10);

  print("Result 1: $result1");
  print("Result 2: $result2");
}
