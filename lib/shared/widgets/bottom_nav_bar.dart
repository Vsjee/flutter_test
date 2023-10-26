import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/config/router/app_router_config.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  String? _goCurrRoute;

  navigate(BuildContext context, String route) {
    context.go('/$route');
    _goCurrRoute = GoRouter.of(context).location();
  }

  @override
  void initState() {
    super.initState();
    _goCurrRoute = GoRouter.of(context).location();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                navigate(context, '/');
              },
              icon: const Icon(Icons.home_outlined),
              iconSize: 35,
              color: _goCurrRoute == '/'
                  ? const Color.fromARGB(255, 115, 0, 255)
                  : Colors.white,
            ),
            IconButton(
              onPressed: () {
                navigate(context, 'categories');
              },
              icon: const Icon(Icons.category_outlined),
              iconSize: 35,
              color: _goCurrRoute == '/categories'
                  ? const Color.fromARGB(255, 115, 0, 255)
                  : Colors.white,
            ),
            IconButton(
              onPressed: () {
                navigate(context, 'profile');
              },
              icon: const Icon(Icons.person_outline),
              iconSize: 35,
              color: _goCurrRoute == '/profile'
                  ? const Color.fromARGB(255, 115, 0, 255)
                  : Colors.white,
            ),
          ],
        ));
  }
}
