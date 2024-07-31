import 'package:fintech/controllers/bottom_nav_bar_controller.dart';
import 'package:fintech/views/screens/home_screen.dart';
import 'package:fintech/views/screens/user_profile_screen.dart';
import 'package:fintech/views/screens/wallet_screen.dart';
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
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => {
                Get.off(() => HomeScreen(),
                    transition: Transition.cupertinoDialog),
                controller.updateIndex(0)
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.home_filled,
                  color: buildActiveIconColor(0, controller.currentIndex),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                Get.off(() => WalletScreen(),
                    transition: Transition.cupertinoDialog),
                controller.updateIndex(1)
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.wallet_outlined,
                  color: buildActiveIconColor(1, controller.currentIndex),
                ),
              ),
            ),
            InkWell(
              onTap: () => {
                Get.snackbar(
                  "Sorry",
                  "No Route Assossiated with this screen",
                )
              },
              child: Icon(
                Icons.add_chart_sharp,
                color: buildActiveIconColor(2, controller.currentIndex),
              ),
            ),
            InkWell(
              onTap: () => {
                Get.off(() => const UserProfileScreen(),
                    transition: Transition.cupertinoDialog),
                controller.updateIndex(3)
              },
              child: Icon(
                Icons.person,
                color: buildActiveIconColor(3, controller.currentIndex),
              ),
            )
          ],
        ),
      ),
    );
  }
}
