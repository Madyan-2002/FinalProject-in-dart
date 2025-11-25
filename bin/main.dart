import 'functions.dart';

void main() {
  bool flag = true;
  while (flag) {
    displayMainMenu();

    try {
      check();
    } catch (error) {
      print("⚠️  Invalid input! Please enter a number from the menu.");
    }
    print("");
  }
}
