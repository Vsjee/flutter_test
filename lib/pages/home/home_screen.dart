import 'package:flutter/material.dart';
import 'package:test/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'HOME',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined, size: 35),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search_outlined,
      //         size: 35,
      //       ),
      //       label: 'Categories',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person_2_outlined,
      //         size: 35,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      //   selectedItemColor: Colors.amber[900],
      // ),
    );
  }
}
