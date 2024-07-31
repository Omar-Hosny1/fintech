import 'package:animated_digit/animated_digit.dart';
import 'package:fintech/models/earning.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EarningCard extends StatelessWidget {
  const EarningCard({super.key, required this.earning});

  final Earning earning;
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(15),
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
          const Spacer(),
          Text(
            earning.name,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.grey[200]),
          ),
          Obx(
            () => AnimatedDigitWidget(
              duration: const Duration(seconds: 2),
              value: earning.price.toInt().obs.value,
              enableSeparator: true,
              textStyle: const TextStyle(color: Colors.white, fontSize: 23),
              prefix: "\$ ",
            ),
          ),
          
        ],
      ),
    );
  }
}
