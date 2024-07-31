import 'package:fintech/models/transaction.dart';
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
           backgroundColor: Colors.amber[100],
           child: const Icon(Icons.laptop),
        ),
        title: Text(transaction.name, style:const  TextStyle(fontWeight: FontWeight.bold),),
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
