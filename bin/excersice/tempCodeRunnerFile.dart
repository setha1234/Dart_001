
import 'dart:io';
import 'dart:convert';

void main() {
  birthdays("bin/birthdays.json");
}

void birthdays(String txt) {
  // Read the file and decode to Json
  var file = File(txt);
  if (!file.existsSync()) {
    print('The file does not exist. Please check the file path.');
    return;
  }
  Map<String, dynamic> data = json.decode(file.readAsStringSync());

  // Current list of people
  print("\nHello there!. We know the birthdays of the following people: \n");
  data.forEach((key, value) {
    print(key);
  });

  // User interaction
  stdout.write("\nWho's birthday do you want to know? ");
  String? choice = stdin.readLineSync();
  if (choice != null) {
    print("\n$choice's birthday is ${data[choice]}\n");
  }

  stdout.write("\nWould you like to add more people's birthdays? ");
  String? answer = stdin.readLineSync()?.toLowerCase();

  // Update the file
  if (answer == "yes") {
    stdout.write("Give us a name: ");
    String? name = stdin.readLineSync();
    stdout.write("Give us their birthday (dd/mm/yyyy): ");
    String? birthday = stdin.readLineSync();

    if (name != null && birthday != null) {
      data[name] = birthday; // Update the map with the new name and birthday
      file.writeAsStringSync(json.encode(data)); // Write updated data to file

      print("\nThank you! We have more people now!\n");

      // Show all people and their birthdays
      data.forEach((key, value) {
        print("$key: $value");
      });
    }
  } else {
    print("\nOK. Bye bye!\n");
  }
}
