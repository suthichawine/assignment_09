import 'package:assignment_09/app_route.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRouter.routes,
      initialRoute: AppRouter.welcome,
    );
  }
}