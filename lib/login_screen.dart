// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:assignment_09/app_route.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Mikucha!'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'E-Mail'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
              ),
              SizedBox(
                width: 100,
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  // กลับไปยังหน้า Register
                  Navigator.pushReplacementNamed(context,AppRouter.register); // หรือ Get.back();
                },
                child: Text('สมัครสมาชิก'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRouter.login);
                  // ไปยังหน้าถัดไป
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
