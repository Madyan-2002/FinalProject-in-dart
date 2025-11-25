import 'dart:io';
import 'database/users.dart';

void register() {
  stdout.write("Please Enter your Name : ");
  String newName = stdin.readLineSync()!;

  bool exists = users.any((m) => m.username == newName);

  if (exists) {
    print("Name is already exist.");
  } else {
    stdout.write("Choose password : ");
    String newPassword = stdin.readLineSync()!;

    stdout.write("Enter your budget :");
    double newbudget = double.parse(stdin.readLineSync()!);

    users.add(User(newName, newPassword, newbudget));

    print("Registration succesful. You can login now");
  }
}
