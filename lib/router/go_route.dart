import 'package:flutter/material.dart';
import 'package:flutter_pruebas/pages/details_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_pruebas/pages/home_screen.dart';

class MyAppRouter {
  final BuildContext context;
  bool _hasRedirect = false;
  MyAppRouter(this.context);

  GoRouter createdRouter() {
    return GoRouter(routes: [
      //main
      GoRoute(
        path: '/',
        name: 'home_screen',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/details',
        name: 'details_screen',
        builder: (context, state) => const DetailsScreen(),
      ),
    ]);
  }
}
