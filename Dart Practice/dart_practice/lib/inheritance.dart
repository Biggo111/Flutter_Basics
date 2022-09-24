//inheritance example

// void main(){
//   Bird bird = Bird();
//   Parrot parrot = Parrot();

//   bird.fly();
//   parrot.fly();
// }

// class Bird{
//   String? name;
//   fly(){
//     print("Bird can fly");
//   }
// }
// class Parrot extends Bird{
//   String? name;
//   speak(){
//     print("Parrot can speak");
//   }
// }
void main() {
  SavingsAccount savingsAccount = SavingsAccount();

  DpsAccount dpsAccount = DpsAccount();

  print("Your DPS Account Balance: ${dpsAccount.getBalance()}");

  print("Your Savings Account Balance: ${savingsAccount.getBalance()}");

  dpsAccount.addMunafa();

  savingsAccount.addMunafa();

  print("Your DPS Account Balance: ${dpsAccount.getBalance()}");

  print("Your Saving Account Balance: ${savingsAccount.getBalance()}");
}

class Account {
  final AccountHolder _accountHolder = AccountHolder(
    name: "Biggo Routh",
    phone: "0123456789",
    address: "Sylhet",
  );

  double _balance = 500;

  double getBalance() {
    return _balance;
  }

  String getAccountHolderName() {
    return _accountHolder.name;
  }

  void deposit(double balance) {
    _balance += balance;
  }

  void addMunafa() {}
}

class SavingsAccount extends Account {
  @override
  final AccountHolder _accountHolder = AccountHolder(
    name: "Biggo",
    phone: "0123456789",
    address: "Sylhet",
  );

  void withDraw() {}

  @override
  void addMunafa() {
    _balance *= 1.03;
  }
}
class DpsAccount extends Account {
  @override
  void addMunafa() {
    _balance *= 1.09;
  }
}

class AccountHolder {
  final String name;
  final String phone;
  final String address;

  AccountHolder({
    required this.name,
    required this.phone,
    required this.address,
  });
}
