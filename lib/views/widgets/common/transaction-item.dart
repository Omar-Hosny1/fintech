import 'package:fintech/models/Transaction.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transaction});
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.laptop),
          backgroundColor: Colors.amber[100],
        ),
        title: Text(transaction.name),
        subtitle: Text(transaction.description),
        trailing: Text(
          transaction.getFormatedPrice(),
          style: TextStyle(
              color: transaction.transactionMode == TransactionMode.substraction
                  ? Colors.red
                  : Colors.green,
              fontSize: 15),
        ),
      ),
    );
  }
}
