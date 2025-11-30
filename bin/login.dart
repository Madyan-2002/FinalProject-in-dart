import 'dart:io';
import 'database/users.dart';

bool login() {
  stdout.write("Please Enter your Name : ");
  String name = stdin.readLineSync()!;

  var found = users.where((u) => u.username == name).toList();
  if (found.isEmpty) {
    print("""
❌ User not found!
👉 Please choose option 2️⃣  (Register) from the main menu to create a new account.
""");

    return false;
  } else {
    var userbud = found.first;

    while (true) {
      stdout.write("Please Enter password : ");
      String password = stdin.readLineSync()!;

      if (password == userbud.password) {
        print("""
========================================
🎉 Login successful! Welcome, $name
----------------------------------------
👤 User: $name
💰 Budget Available: \$${userbud.budget}
========================================
""");
        return true;
      } else {
        print("❌ Wrong password! Please try again.");
      }
    }
  }
}
