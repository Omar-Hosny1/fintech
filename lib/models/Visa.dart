import 'package:flutter/material.dart';

class Visa {
  String clientName;
  String exp;
  int serialNumber;
  double totalBalance;
  Color backgroundColor;

  Visa({
    required this.backgroundColor,
    required this.clientName,
    required this.exp,
    required this.serialNumber,
    required this.totalBalance,
  });

  String getFormatedBalance() {
    return "\$ $totalBalance";
  }

  String getFormatedSerialNumber() {
    final serialNumberText = serialNumber.toString(); 
    if(serialNumberText.length != 16){
      return "****  ****  ****  ****";
    }
    // return "";
    return  "${serialNumberText.substring(0, 4)}    ****    *****    ${serialNumberText.substring(12, 16)}";
  }
}
