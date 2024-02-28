import 'package:assignment_09/app_route.dart';
import 'package:assignment_09/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      routes: AppRouter.routes,
      initialRoute: AppRouter.todo,
    );
  }
}