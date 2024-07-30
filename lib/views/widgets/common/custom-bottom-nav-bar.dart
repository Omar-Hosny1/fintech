import 'package:fintech/controllers/bottom-nav-bar-controller.dart';
import 'package:fintech/views/screens/wallet-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Color buildActiveIconColor(int index, int currentIndex) {
      if (index == currentIndex) {
        return Colors.black;
      }
      return Colors.grey[400]!;
    }

    return GetBuilder<BottomNavBarController>(
      builder: (controller) => Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => {
                Get.back(),
                controller.updateIndex(0)
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.home_filled,
                  color: buildActiveIconColor(0, controller.currentIndex),
                ),
              ),
            ),
            InkWell(
              onTap: () => {Get.to(() => WalletScreen(), transition: Transition.fade), controller.updateIndex(1)},
              child: Container(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.wallet_outlined,
                  color: buildActiveIconColor(1, controller.currentIndex),
                ),
              ),
            ),
            Container(
              child: Icon(
                Icons.add_chart_sharp,
                color: buildActiveIconColor(2, controller.currentIndex),
              ),
            ),
            Container(
              child: Icon(
                Icons.person,
                color: buildActiveIconColor(3, controller.currentIndex),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
