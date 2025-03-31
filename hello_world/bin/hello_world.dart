import 'dart:io';
import 'package:hello_world/const/days_of_week.dart';
import 'package:hello_world/emoji_days.dart';
import 'package:hello_world/practice_functions.dart';
import 'package:hello_world/inventory.dart';

void main() {
  List<String> activities = ['Basic Syntax Practice', 'Variables and Data Types', 'Conditional Statements', 'Loops', 'Functions', 'Enums and Switch Statements'];
    bool isValid = false;
    int count = 1; 
    int activityNumber = 1;

  print("Choose an activity: ");
  for (String activity in activities){
    print("$count. $activity");
    count++;
  }

  while (!isValid) {
        try {
          activityNumber = int.parse(stdin.readLineSync()!);
          isValid = true; // Mark as valid if parsing is successful
        } catch (e) {
          print("Invalid input. Please enter a valid activity number.");
        }
    }
  
  // Inventory().setCurrentStock();
  EmojiDays.day = DaysOfTheWeek.monday;
}