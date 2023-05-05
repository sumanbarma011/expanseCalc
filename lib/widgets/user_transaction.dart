import 'package:flutter/material.dart';
import '../models/transaction.dart';
import './newTransaction.dart';
import './transactionList.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> _usersTransactions = [
    Transaction(
        id: 'T1', title: 'New Shoes', amount: 99.99, date: DateTime.now()),
    Transaction(
        id: 'T2', title: 'New Clothes', amount: 33.54, date: DateTime.now())
  ];
  void _addTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );
    setState(() {
      _usersTransactions.add(newTx);
    });


  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTransaction: _addTransaction,),
        TransactionList(transactions: _usersTransactions),
      ],
    );
  }
}
