// ignore: unused_import
import 'dart:io';

void main() {
  print("Enter score for Java:");
  double javaScore = double.parse(stdin.readLineSync()!);

  print("Enter score for Python:");
  double pythonScore = double.parse(stdin.readLineSync()!);

  print("Enter score for DB:");
  double dbScore = double.parse(stdin.readLineSync()!);

  double totalScore = javaScore + pythonScore + dbScore;
  double avg = totalScore / 3;

  String grade;
  if (avg > 90 && avg <= 100) {
    grade = 'A';
  } else if (avg >= 80 && avg <= 90) {
    grade = 'B';
  } else if (avg > 70 && avg < 80) {
    grade = 'C';
  } else if (avg > 60 && avg <= 70) {
    grade = 'D';
  } else if (avg > 50 && avg <= 60) {
    grade = 'E';
  } else {
    grade = 'F';
  }

  print("\nTotal Score: $totalScore");
  print("Average Score: $avg");
  print("Grade: $grade");
}
