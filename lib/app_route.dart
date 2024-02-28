// ignore_for_file: prefer_const_constructors

import 'package:assignment_09/todo_screen.dart';

class AppRouter {
  static const String todo = 'todo';

  static get routes => {
        todo: (context) => TODOScreen(),
      };
}
