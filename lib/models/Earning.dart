import 'package:flutter/material.dart';

class Earning {
  String name;
  double price;
  Color color;
  Earning({required this.name, required this.price, required this.color});

  String getFormatedPrice() {
    return "\$ $price";
  }

  String getFirstLetter() {
    if (name.isEmpty) {
      return '';
    }
    return name[0];
  }
}
