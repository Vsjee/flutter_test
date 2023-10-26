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
          body: Center(
            child: child,
          ),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
      routes: [
        GoRoute(
            path: '/',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: const HomeScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity: CurveTween(curve: Curves.elasticInOut)
                        .animate(animation),
                    child: child,
                  );
                },
              );
            }),
        GoRoute(
            path: '/categories',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: const CategoriesScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity: CurveTween(curve: Curves.elasticInOut)
                        .animate(animation),
                    child: child,
                  );
                },
              );
            }),
        GoRoute(
            path: '/profile',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return CustomTransitionPage(
                key: state.pageKey,
                child: const ProfileScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  // Change the opacity of the screen using a Curve based on the the animation's
                  // value
                  return FadeTransition(
                    opacity: CurveTween(curve: Curves.elasticInOut)
                        .animate(animation),
                    child: child,
                  );
                },
              );
            }),
      ],
    ),
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
