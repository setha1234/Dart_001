import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';

void main() {
  // Read the Json file
  File file = File("bin/excersice/birthdays.json");
  Map<String, dynamic> data = json.decode(file.readAsStringSync());  // Change type to Map<String, dynamic>

  // Extract the months to a list
  DateFormat extractor = DateFormat("MMMM");
  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d as String))
  ];

  // Count the occurrence of each month
  counter(months);
}

DateTime formatter(String birthday) {
  /*
  Takes a string and returns a DateTime object
  */
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

void counter(List<String> m) {
  /*
  Takes a list of months and counts their occurrences
  Saves them to a map and prints the results
  */
  Map<String, int> occurrences = {};

  m.forEach((e) {
    occurrences[e] = (occurrences[e] ?? 0) + 1;
  });

  print("\nHere are the counts:\n");
  occurrences.forEach((key, value) {
    print("$key: $value");
  });
}
