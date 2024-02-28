import 'package:assignment_09/services/firebase_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TODOScreen extends StatelessWidget {
  const TODOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseService fireBaseController = Get.put(FirebaseService());

    final TextEditingController title = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: title,
                obscureText: false,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'TO DO List',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                fireBaseController.addToDo("title.text");
              },
              child: const Text("add"),
            )
          ],
        ),
      ),
    );
  }
}


// MyApp({super.key});
//   final FireBaseController fireBaseController = Get.put(FireBaseController());

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     TextEditingController titleController = TextEditingController();