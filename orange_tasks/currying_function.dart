Function curry(Function function) {
  return (arg1) {
    return (arg2) {
      return function(arg1, arg2);
    };
  };
}

int add(int a, int b) {
  return a + b;
}

void main() {
  var curriedAdd = curry(add);

  var addTwo = curriedAdd(2);
  var addFive = curriedAdd(5);

  int result1 = addTwo(3);
  int result2 = addFive(7);

  print("Result 1: $result1");
  print("Result 2: $result2");
}
