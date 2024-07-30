import 'package:fintech/models/Visa.dart';
import 'package:fintech/views/widgets/common/user-avatar.dart';
import 'package:fintech/views/widgets/wallet/add-visa-btn.dart';
import 'package:fintech/views/widgets/common/custom-bottom-nav-bar.dart';
import 'package:fintech/views/widgets/common/transactions-wrapper.dart';
import 'package:fintech/views/widgets/wallet/visa-item.dart';
import 'package:flutter/material.dart';

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
        bottomNavigationBar: CustomBottomNavBar(),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: UserAvatar(),
                title: Text(
                  "Wallet",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                trailing: CircleAvatar(
                  child: Icon(Icons.settings),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 230,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    AddVisaBtn(),
                    VisaItem(
                      visa: visas[0],
                    ),
                    VisaItem(
                      visa: visas[1],
                    ),
                    VisaItem(
                      visa: visas[2],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
    );
  }
}
