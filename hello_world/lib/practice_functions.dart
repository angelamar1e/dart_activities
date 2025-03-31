void printGreeting() {
  print('Hello, World!');
}

//  pH of 7 is neutral, a pH less than 7 is acidic, and a pH greater than 7 is basic

void getType(double pHLevel) {
  if (pHLevel < 7) {
    print("A substance with the pH value of $pHLevel is Acidic.");
  } else if (pHLevel > 7) {
    print("A substance with the pH value of $pHLevel is Basic.");
  } else {
    print("A substance with the pH value of $pHLevel is Neutral.");
  }
}