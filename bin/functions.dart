import 'dart:io';
import 'login.dart';
import 'register.dart';
import 'database/product.dart';
// import 'database/users.dart';
// import 'budget.dart';

void displayMainMenu() {
  print("""
===============================
| 🔹 WELCOME TO OUR SHOP 🔹   |
|-----------------------------|
|  1. login                   |
|                             |
|  2. register                |
|                             |
|  3. exit                    |
===============================
""");
}

void displayMenu2() {
  print("""
====================================
| 🛒   WELCOME TO THE SHOP MENU    |
|----------------------------------|
|  1. Buy a Phone                  |
|                                  |
|  2. Repair Your Device           |
|                                  |
|  3. Back to Main Menu            |
====================================
""");
}

void check() {
  stdout.write("Please enter your choise :");
  int choice = int.parse(stdin.readLineSync()!);
  if (choice != 1 && choice != 2 && choice != 3) {
    print("""
===============================
❌ Invalid Selection!
Please enter 1, 2, or 3.
===============================
""");
  }
  switch (choice) {
    case 1:
      {
        login();
        check2();
      }
    case 2:
      {
        register();
        break;
      }
    case 3:
      {
        print("Goodbye!");
        exit(0);
      }
  }
}

void check2() {
  bool shopRunning = true;

  while (shopRunning) {
    stdout.write("Please enter your choise :");

    try {
      int choice2 = int.parse(stdin.readLineSync()!);
      if (choice2 != 1 && choice2 != 2 && choice2 != 3) {
        print("""
===============================
❌ Invalid Selection!
Please enter 1, 2, or 3.
===============================
""");
      } else {
        switch (choice2) {
          case 1:
            {
              buyPhone();
              break;
            }
          case 2:
            {
              repairDevice();
              break;
            }
          case 3:
            {
              displayMainMenu();
              shopRunning = false;
              check();
              break;
            }
        }
      }
    } catch (x) {
      print("Invalid input , Enter number please.");
    }
  }
}

void buyPhone() {
  while (true) {
    printPhones();

    stdout.write(
      "Enter the number of the phone you want to buy or 0 to cancel: ",
    );
    try {
      int number = int.parse(stdin.readLineSync()!);

      if (number == 0) {
        print("⚠️  Purchase Canceled.");
        displayMenu2();
        check2();
        break;
      } else if (number > 0 && number <= phones.length) {
        var selectPhone = phones[number - 1];

//         var currentUser = users[0];
//         if (selectPhone.price > currentUser.budget.balance) {
//           print("""
// ===============================
// ❌ Your budget is not enough!
// 💰 Your Budget : \$${currentUser.budget}
// 💲 Phone Price : \$${selectPhone.price}
// ===============================
// """);
//         }

        stdout.write(
          "Are you sure you want to buy ${selectPhone.brand} for \$${selectPhone.price}? (y/n): ",
        );

        String? confirm = stdin.readLineSync()?.toLowerCase();

        if (confirm == 'y') {
          print("""
==========================================
🎉 Purchase Summary
------------------------------------------
📱 Device Selected : ${selectPhone.brand}
💲 Price           : \$${selectPhone.price}
==========================================
Thank you for your purchase!
""");
          exit(0);
        }
      } else {
        print("❌ Invalid selection.");
        print("");
      }
    } catch (w) {
      print("❌ Invalid input! Please enter a number from list.");
      print("");
    }
  }
}
