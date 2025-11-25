import 'dart:io';
import 'database/users.dart';
import 'functions.dart';

void login() {
  stdout.write("Please Enter your Name : ");
  String name = stdin.readLineSync()!;

  var found = users.where((u) => u.username == name).toList();
  if (found.isEmpty) {
    print("The user name not found , please register.");
    return;
  } else {
    var userbud = found.first;

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

      displayMenu2();
    }
  }
}
