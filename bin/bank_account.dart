
class BankAccount {
  String _name;
  String get name => _name;

  double _balance;
  double get balance => _balance;

  BankAccount(this._name,this._balance);

  BankAccount.zero(this._name) : _balance = 0;

  void deposit(double amount) => _balance += amount;

  bool withdraw(double amount) {
    if (amount > balance) return false;

    _balance -= amount;
    return true;

  }
}
