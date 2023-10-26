import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  navigate(BuildContext context, String route) {
    context.go('/$route');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 213, 213, 213),
      child: Row(
        children: [
          ElevatedButton(
              onPressed: () {
                navigate(context, '');
              },
              child: const Text('Home')),
          ElevatedButton(
              onPressed: () {
                navigate(context, 'categories');
              },
              child: const Text('Categories')),
          ElevatedButton(
              onPressed: () {
                navigate(context, 'profile');
              },
              child: const Text('Profile'))
        ],
      ),
    );
  }
}
