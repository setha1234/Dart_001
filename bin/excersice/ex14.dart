import 'dart:io';

void main() {
  stdout.write("Please give a sentence: ");
  String sentence = stdin.readLineSync() ?? ""; // Handle null input

  reverseSentence(sentence);
}

void reverseSentence(String sentence) {
  /* Split the sentence into a list of words
  Reverse the list, then join the words back */
  String reversedSentence = sentence.split(" ").reversed.join(" ");
  print(reversedSentence);
}
