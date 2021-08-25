import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'package:expenseapplication/widgets/new_transaction.dart';
import 'package:expenseapplication/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'New laptop',
      amount: 2250,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'New phone',
      amount: 1250,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(
            _addNewTransaction), // where inputs are taken and added to the list
        TransactionList(_userTransaction), // where the design lies
      ],
    );
  }
}
