void main() {
  SavingsAccount savingsAccount = SavingsAccount();

  savingsAccount.deposit(500);

  print("Your balance is: ${savingsAccount.getBalance()}");
}

abstract class Account {
  final AccountHolder _accountHolder = AccountHolder(name: "Biggo Routh", phone: "0123456789", address: "Sylhet");


  void _validateAccountHolder() {
    print("Validating account holder: ${_accountHolder.name}");
  }

  void deposit(double balance) {
    _validateAccountHolder();
  }

  void withdraw();

}

class SavingsAccount extends Account{
  double _balance = 500;

  @override
  void deposit(double balance) {
    super.deposit(balance);
    _balance += balance;
  }

  double getBalance() {
    return _balance;
  }

  @override
  void withdraw() {
    // Here withdraw method is overrided to be edited on the demands of this SavingAccount class. This is why we use abstract keyword.
  }
}

class AccountHolder{
  final String name;
  final String phone;
  final String address;

  AccountHolder({
    required this.name,
    required this.phone,
    required this.address,
  });
}