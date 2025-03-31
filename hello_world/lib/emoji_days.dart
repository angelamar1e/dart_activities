import 'package:hello_world/const/days_of_week.dart';

class EmojiDays {
  static Enum day = DaysOfTheWeek.monday;

  static void getEmoji() {
    switch (day) {
      case DaysOfTheWeek.monday: print("🥰");
      case DaysOfTheWeek.tuesday: print("🫡");
      case DaysOfTheWeek.wednesday: print("😊");
      case DaysOfTheWeek.thursday: print("😉");
      case DaysOfTheWeek.friday: print("😍");
      case DaysOfTheWeek.saturday: print("🤩");
      case DaysOfTheWeek.sunday: print("😎");
    }
  }
}