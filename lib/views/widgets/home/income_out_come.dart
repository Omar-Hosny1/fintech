import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class IncomeOutcome extends StatelessWidget {
  IncomeOutcome({super.key, required this.orientation});
  Orientation orientation;
  Rx<int> income = 20000.obs;
  Rx<int> outcome = 17000.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 43, 43, 43),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.green,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Income",
                          style:
                              TextStyle(color: Colors.grey[200], fontSize: 13),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Obx(
                          () => AnimatedDigitWidget(
                            duration: const Duration(seconds: 2),
                            value: income.value,
                            enableSeparator: true,
                            textStyle:
                                const TextStyle(color: Colors.white, fontSize: 23),
                            prefix: "\$ ",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 2,
                  color: Colors.grey[300],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.arrow_upward_outlined,
                      color: Colors.red,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Outcome",
                          style:
                              TextStyle(color: Colors.grey[200], fontSize: 13),
                        ),
                        Obx(
                          () => AnimatedDigitWidget(
                            duration: const Duration(seconds: 2),
                            value: outcome.value,
                            enableSeparator: true,
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 23),
                            prefix: "\$ ",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              left: -20,
              top: -30,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent.shade100,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Positioned(
              right: -25,
              bottom: -35,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
