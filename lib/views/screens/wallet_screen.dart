import 'package:fintech/models/visa.dart';
import 'package:fintech/views/widgets/common/user_avatar.dart';
import 'package:fintech/views/widgets/wallet/add_visa_btn.dart';
import 'package:fintech/views/widgets/common/custom_bottom_nav_bar.dart';
import 'package:fintech/views/widgets/common/transactions_wrapper.dart';
import 'package:fintech/views/widgets/wallet/visa_item.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WalletScreen extends StatelessWidget {
  WalletScreen({super.key});

  List<Visa> visas = [
    Visa(
      backgroundColor: Colors.white,
      clientName: "Omar Hosny",
      exp: "09/23",
      serialNumber: 1234567891523465,
      totalBalance: 25000,
    ),
    Visa(
      backgroundColor: Colors.amber[100]!,
      clientName: "Ahmed Mohamed",
      exp: "09/23",
      serialNumber: 1234567891523465,
      totalBalance: 25000,
    ),
    Visa(
      backgroundColor: Colors.white,
      clientName: "Hussien Mohamed",
      exp: "09/23",
      serialNumber: 1234567891523465,
      totalBalance: 25000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: const CustomBottomNavBar(),
        body: SingleChildScrollView(
          child: OrientationBuilder(
            builder: (context, orientation) => Container(
              height: 800,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: UserAvatar(),
                    title: const Text(
                      "Wallet",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    trailing: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(Icons.settings),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const AddVisaBtn(),
                        VisaItem(
                          visa: visas[0],
                          orientation: orientation,
                        ),
                        VisaItem(
                          visa: visas[1],
                          orientation: orientation,
                        ),
                        VisaItem(
                          visa: visas[2],
                          orientation: orientation,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Icon(Icons.edit)
                      ],
                    ),
                  ),
                  TransactionWrapper()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
