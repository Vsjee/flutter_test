import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/pages/categories/categories_screen.dart';
import 'package:test/pages/home/home_screen.dart';
import 'package:test/pages/profile/profile_screen.dart';
import 'package:test/shared/widgets/bottom_nav_bar.dart';

// GoRouter configuration
GoRouter _router = GoRouter(
  routes: [
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          appBar: AppBar(title: const Text('App Shell')),
          body: Center(
            child: child,
          ),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
      routes: [
        GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            }),
        GoRoute(
            path: '/categories',
            builder: (BuildContext context, GoRouterState state) {
              return const CategoriesScreen();
            }),
        GoRoute(
            path: '/profile',
            builder: (BuildContext context, GoRouterState state) {
              return const ProfileScreen();
            }),
      ],
    ),
    // GoRoute(
    //     path: '/',
    //     builder: (context, state) => const HomeScreen(),
    //     routes: <GoRoute>[
    //       GoRoute(
    //         path: 'categories',
    //         builder: (context, state) => const CategoriesScreen(),
    //       ),
    //       GoRoute(
    //         path: 'profile',
    //         builder: (context, state) => const ProfileScreen(),
    //       ),
    //     ]),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
