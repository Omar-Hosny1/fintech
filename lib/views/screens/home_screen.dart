import 'package:fintech/models/earning.dart';
import 'package:fintech/views/widgets/common/user_avatar.dart';
import 'package:fintech/views/widgets/home/entry_title.dart';
import 'package:fintech/views/widgets/common/custom_bottom_nav_bar.dart';
import 'package:fintech/views/widgets/home/earning_card.dart';
import 'package:fintech/views/widgets/common/transactions_wrapper.dart';
import 'package:fintech/views/widgets/common/wallet_card.dart';
import 'package:fintech/views/widgets/home/income_out_come.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Earning> earnings = [
    Earning(name: 'Upwork', price: 3000, color: Colors.red[400]!),
    Earning(name: 'Freepik', price: 3000, color: Colors.pink[200]!),
    Earning(name: 'Thoughts', price: 3000, color: Colors.blue[600]!),
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
              padding: const EdgeInsets.all(15),
              height: 800,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: UserAvatar(),
                    title: const Text(
                      'Good Morning!',
                      style: TextStyle(fontSize: 13),
                    ),
                    subtitle: const Text(
                      'Client Name',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(Icons.notifications_none_outlined),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  WalletCard(orientation: orientation,),
                  const SizedBox(
                    height: 10,
                  ),
                  IncomeOutcome(orientation: orientation,),
                  EntryTitle(title: "Earnings"),
                   SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: earnings.length,
                      itemBuilder: (context, index) => EarningCard(
                        earning: earnings[index],
                      ),
                    ),
                  ),
                  EntryTitle(
                    title: "Transactions",
                    subTitle: "Today",
                  ),
                  const SizedBox(
                    height: 10,
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
