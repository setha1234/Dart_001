import 'dart:io';

void main() {
  stdout.write("What's your name? ");
  String? name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    print("You didn't enter a name.");
    return;
  }

  print("Hi, $name! What is your age?");
  String? ageInput = stdin.readLineSync();

  if (ageInput != null && int.tryParse(ageInput) != null) {
    int age = int.parse(ageInput);
    int yearsToHundred = 100 - age;
    print("$name, you have $yearsToHundred years to be 100.");
  } else {
    print("Invalid input! Please enter a valid number for your age.");
  }
}
