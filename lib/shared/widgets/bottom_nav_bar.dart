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

    setState(() {
      _goCurrRoute = GoRouter.of(context).location();
    });
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: const Color(0x00000000).withOpacity(1),
                offset: const Offset(0, 0),
                blurRadius: 10,
                spreadRadius: -5,
              ),
            ]),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                navigate(context, '/');
              },
              icon: Icon(
                Icons.home_outlined,
                size: 35,
                color: _goCurrRoute == '/'
                    ? const Color.fromARGB(255, 115, 0, 255)
                    : const Color.fromARGB(255, 29, 29, 29),
              ),
            ),
            IconButton(
              onPressed: () {
                navigate(context, 'categories');
              },
              icon: Icon(
                Icons.category_outlined,
                size: 35,
                color: _goCurrRoute == '/categories'
                    ? const Color.fromARGB(255, 115, 0, 255)
                    : const Color.fromARGB(255, 29, 29, 29),
              ),
            ),
            IconButton(
              onPressed: () {
                navigate(context, 'profile');
              },
              icon: Icon(
                Icons.person_2_outlined,
                color: _goCurrRoute == '/profile'
                    ? const Color.fromARGB(255, 115, 0, 255)
                    : const Color.fromARGB(255, 29, 29, 29),
                size: 35,
              ),
            ),
          ],
        ));
  }
}
