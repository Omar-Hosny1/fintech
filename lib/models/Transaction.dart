import 'package:flutter/material.dart';

enum TransactionMode { addition, substraction }

class Transaction {
  IconData icon;
  String name;
  String description;
  double price;
  TransactionMode transactionMode;
  Transaction({
    required this.description,
    required this.icon,
    required this.name,
    required this.price,
    required this.transactionMode,
  });
  String getFormatedPrice() {
    return "\$ $price";
  }
}
