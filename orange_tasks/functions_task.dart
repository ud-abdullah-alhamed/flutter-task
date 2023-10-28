void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List<int> squaredNumbers = mapList(numbers, (number) => number * number);
  print("Squared Numbers: $squaredNumbers");

  List<int> oddNumbers = filterList(numbers, (number) => number % 2 != 0);
  print("Odd Numbers: $oddNumbers");

  int sum = reduceList(
      numbers, (int accumulator, int number) => accumulator + number);
  print("Sum of Numbers: $sum");
}

List<T> mapList<T, E>(List<E> list, T Function(E) mapper) {
  List<T> result = [];
  for (var element in list) {
    result.add(mapper(element));
  }
  return result;
}

List<T> filterList<T>(List<T> list, bool Function(T) predicate) {
  List<T> result = [];
  for (var element in list) {
    if (predicate(element)) {
      result.add(element);
    }
  }
  return result;
}

T reduceList<T, E>(List<E> list, T Function(T, E) reducer) {
  T result = (list.isNotEmpty ? list.first : null) as T;
  for (var element in list.skip(1)) {
    result = reducer(result, element);
  }
  return result;
}
