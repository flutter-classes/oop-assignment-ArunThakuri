import 'dart:io';

//Creating Class Student with different data
class BankAccount {
  int accountNo;
  String accountType;
  int accountBalance;

  BankAccount({
    required this.accountNo,
    required this.accountType,
    required this.accountBalance,
  });

  //withdraw
  withdraw() {
    print("Enter Amount you want to withdraw: ");
    int? debitedAmount = int.parse(stdin.readLineSync()!);
    int remainingBalance = accountBalance - debitedAmount;
    print(
        "Thanks for Using Our System. Your Remaing Balance is: $remainingBalance");
  }

  //deposit
  deposit() {
    print("Enter Amount you want to deposit: ");
    int depositedAmount = int.parse(stdin.readLineSync()!);
    int? totalBalance = accountBalance + depositedAmount;
    print("Deposit Successful!!! You total balance is $totalBalance ");
  }

//get accoount details
  getAccountDetails() {
    print("Your Account Number is $accountNo");
    print("Your Account Type is $accountType");
    print("Your Account Number is $accountBalance");
  }
}

void main() {
  final bankAccount = BankAccount(
      accountNo: 98702, accountType: "Regular Saving", accountBalance: 15000);

  bankAccount.withdraw();
  bankAccount.deposit();
  bankAccount.getAccountDetails();
}
