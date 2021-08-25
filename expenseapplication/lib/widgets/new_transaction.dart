import 'dart:developer';

import 'package:expenseapplication/widgets/user_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) => titleInput = value,
              // OR
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) {
              //   amountInput = value;
              // },
              // OR
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                // OR
                // print(titleController.text);
                // print(amountController.text);
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
              child: Text('Add Transaction'),
            ),
          ],
        ),
      ),
    );
  }
}
