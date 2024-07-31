import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class WalletCard extends StatelessWidget {
  WalletCard({super.key, required this.orientation});
  Orientation orientation;
  Rx<int> totalBalance = 25000.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: double.infinity,
      height: orientation == Orientation.portrait ? 150 : 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            const Positioned(
              top: 10,
              left: 10,
              child: Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Obx(
                () => AnimatedDigitWidget(
                  duration: const Duration(seconds: 2),
                  value: totalBalance.value,
                  enableSeparator: true,
                  textStyle: const TextStyle(color: Colors.white, fontSize: 30),
                  prefix: "\$ ",
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  const Text(
                    'My Wallet',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/images/illistrator-form.png",
                  scale: orientation == Orientation.portrait ? 0.8 : 1.3),
            ),
            Positioned(
              bottom: -50,
              left: -40,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade700,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
