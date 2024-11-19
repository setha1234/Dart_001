import 'dart:io';
import 'dart:math';

void main() {
  print("Type 'exit' to quit the game");
  guessingGame();
}

void guessingGame() {
  final random = Random();
  int randNumber = random.nextInt(100) + 1;
  int attempt = 0;

  while (true) {
    attempt += 1;
    stdout.write("Please choose a number between 1 and 100: ");
    String chosenNumber = stdin.readLineSync() ?? "";

    if (chosenNumber.toLowerCase() == "exit") {
      print("\nBye!");
      break;
    }

    if (int.tryParse(chosenNumber) == null) {
      print("Please enter a valid number.");
      continue;
    }

    int parsedNumber = int.parse(chosenNumber);

    if (parsedNumber < 1 || parsedNumber > 100) {
      print("Please choose a number between 1 and 100.");
      continue;
    }

    if (parsedNumber == randNumber) {
      print("Bingo! You tried $attempt times\n");
      break;
    } else if (parsedNumber > randNumber) {
      print("You are too high.");
    } else {
      print("You are too low.");
    }
  }
}
