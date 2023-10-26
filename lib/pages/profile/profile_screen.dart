import 'package:flutter/material.dart';
import 'package:test/widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
