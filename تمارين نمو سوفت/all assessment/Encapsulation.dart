mixin EmailNotification {
  void sendEmail() => print("Email sent");
}

class BankAccount with EmailNotification {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) _balance = value;
  }
}