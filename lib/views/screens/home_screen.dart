import 'package:fintech/models/Earning.dart';
import 'package:fintech/views/widgets/common/user-avatar.dart';
import 'package:fintech/views/widgets/home/entry-title.dart';
import 'package:fintech/views/widgets/common/custom-bottom-nav-bar.dart';
import 'package:fintech/views/widgets/home/earning_card.dart';
import 'package:fintech/views/widgets/common/transactions-wrapper.dart';
import 'package:fintech/views/widgets/common/wallet_card.dart';
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
        bottomNavigationBar: CustomBottomNavBar(),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: UserAvatar(),
                title: Text(
                  'Good Morning!',
                  style: TextStyle(fontSize: 13),
                ),
                subtitle: Text(
                  'Client Name',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(Icons.notifications_none_outlined),
              ),
              SizedBox(
                height: 10,
              ),
              WalletCard(),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 43, 43, 43),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_downward_outlined,
                            color: Colors.green,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Income",
                                style: TextStyle(
                                    color: Colors.grey[200], fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$20,000",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 2,
                      color: Colors.grey[300],
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.arrow_upward_outlined,
                            color: Colors.red,
                            size: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Outcome",
                                style: TextStyle(
                                    color: Colors.grey[200], fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "\$17,000",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              EntryTitle(title: "Earnings"),
              Container(
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
              SizedBox(height: 10,),
              TransactionWrapper()
            ],
          ),
        ),
      ),
    );
  }
}
