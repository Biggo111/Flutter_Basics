void main(){
    Account account = Account(
      holderName: "Biggo Routh",
      holderPhone: "0123456789",
      balance: 500,
    );
    account.deposite(100);
    print("Balance is ${account.getBalance()}");
}

class Account{
  String? _holderName;
  String? _holderPhone;
  double? _balance;

  Account({
    required String holderName,
    required String holderPhone,
    required double balance,
  }){
    _holderName = holderName;
    _holderPhone = holderPhone;
    _balance = balance;
  }
  double? getBalance(){
    return _balance;
  }
  void deposite(double newBalance){
    if (_balance != null) {
      _balance = _balance! + newBalance;
    } else {
      _balance = newBalance;
    }
  }
  String? getHolderName() {
    return _holderName;
  }

  String? getHolderPhone() {
    return _holderPhone;
  }
}