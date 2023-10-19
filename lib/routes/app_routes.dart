import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<RouteBase> appRoutes() {
  return [
    GoRoute(
      path: '/',
      builder: (context, state) => const Scaffold(
        backgroundColor: Colors.red,
      ),
    ),
  ];
}
