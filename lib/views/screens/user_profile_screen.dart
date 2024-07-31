import 'package:fintech/views/widgets/common/custom_bottom_nav_bar.dart';
import 'package:fintech/views/widgets/common/user_avatar.dart';
import 'package:fintech/views/widgets/profile/profile_list_item.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: const CustomBottomNavBar(),
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 500,
            child: Column(
              children: [
                UserAvatar(
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Omar Hosny',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'hosnyomar022@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 24),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: ListView(
                      children: const [
                        ProfileListItem(
                          icon: Icons.phone,
                          text: 'Phone: 01144687817',
                        ),
                        ProfileListItem(
                          icon: Icons.location_city,
                          text: 'City: Cairo, Hadayeq El Qobbah',
                        ),
                        ProfileListItem(
                          icon: Icons.calendar_today,
                          text: 'Birthday: 22/5/2004',
                        ),
                        ProfileListItem(
                          icon: Icons.work,
                          text: 'Job Title: Junior Software Engineer',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
