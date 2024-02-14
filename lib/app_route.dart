// ignore_for_file: prefer_const_constructors

import 'package:assignment_09/login_screen.dart';
import 'package:assignment_09/register_screen.dart';
import 'package:assignment_09/welcome_screen.dart';

class AppRouter {
  static const String login = 'login';
  static const String welcome = 'welcome';
  static const String register = 'register';



  static get routes => {
        welcome: (context) =>  WelcomeScreen(),
        login: (context) =>  Loginscreen(),
        register: (context) =>  RegisterScreen(),
        
      };
}