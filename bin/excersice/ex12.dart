import 'dart:io';

void main() {
  stdout.write("How many Fibonacci numbers do you want? ");
  int chosenNumber = int.parse(stdin.readLineSync() ?? '0');

  List<int> result = fibonacciNumbers(chosenNumber);
  print(result);
}

List<int> fibonacciNumbers(int chosenNumber) {
  List<int> fibList = [1, 1];

  for (var i = 2; i < chosenNumber; i++) {
    fibList.add(fibList[i - 1] + fibList[i - 2]);
  }
  return fibList.sublist(0, chosenNumber);
}
