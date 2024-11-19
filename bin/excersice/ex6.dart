import 'dart:io';

void main() {
  stdout.write("Please give a word: ");
  String input = stdin.readLineSync()!;
  String revInput = input.toLowerCase().split('').reversed.join('');

  // Ternary operator
  input.toLowerCase() == revInput
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}
