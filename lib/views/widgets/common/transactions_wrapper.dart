import 'package:fintech/models/transaction.dart';
import 'package:fintech/views/widgets/common/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionWrapper extends StatelessWidget {
  TransactionWrapper({
    super.key,
  });
  final List<Transaction> transactions = [
    Transaction(
      name: "Adobe Illustrator",
      description: 'Subscription fee',
      icon: Icons.laptop,
      price: 32,
      transactionMode: TransactionMode.substraction,
    ),
    Transaction(
      name: "Dribble",
      description: 'Subscription fee',
      icon: Icons.laptop,
      price: 32,
      transactionMode: TransactionMode.substraction,
    ),
    Transaction(
      name: "Sony Camera",
      description: 'Shopping fee',
      icon: Icons.laptop,
      price: 32,
      transactionMode: TransactionMode.substraction,
    ),
    Transaction(
      name: "Paypal",
      description: 'Salary',
      icon: Icons.laptop,
      price: 32,
      transactionMode: TransactionMode.addition,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) => TransactionItem(
          transaction: transactions[index],
        ),
      ),
    ));
  }
}
