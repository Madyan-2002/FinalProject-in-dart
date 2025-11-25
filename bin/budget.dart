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
