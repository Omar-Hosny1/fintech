import 'package:fintech/models/Earning.dart';
import 'package:flutter/material.dart';

class EarningCard extends StatelessWidget {
  const EarningCard({super.key, required this.earning});

  final Earning earning;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: earning.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Text(earning.getFirstLetter()),
          ),
          Spacer(),
          Text(
            earning.name,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey[200]),
          ),
          Text(
            earning.getFormatedPrice(),
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
        ],
      ),
    );
  }
}
