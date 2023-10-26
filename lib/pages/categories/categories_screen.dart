import 'package:flutter/material.dart';
import 'package:test/widgets/bottom_nav_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Categories',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
