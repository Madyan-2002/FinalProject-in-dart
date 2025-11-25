class User {
  String _username;
  String _password;
  double _budget;

  //constrctor
  User(this._username, this._password, this._budget);

  String get username => _username;

  String get password => _password;

  double get budget  =>_budget;

  set username(String us)  => _username = us;

  set password(String p) => _password = p;

  set budget(double b) => _budget = b;
}

List<User> users = [
  User("Madyan", "M123", 10000),
  User("Lamya", "L123", 150000),
  User("Sahar", "S123", 20000),
  User("Omar", "O123", 30000),
];

class Budget {
  double balance;
  List<double> expences = [];

  Budget(this.balance);

  void addExpense(double amount) {
    if (amount <= 0) {
      print("❌ Amount must be greater than 0.");
      return;
    }
    if (amount > balance) {
      print("❌ Insufficient balance. Cannot add this expense.");
      return;
    }

    expences.add(amount);
    balance = balance - amount;
  }

  void showInfo() {
    print('''💰 Balance = $balance
  📉 Expenses = $expences
''');
  }
}