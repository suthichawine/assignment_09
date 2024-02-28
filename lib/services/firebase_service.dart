import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FirebaseService extends GetxController {
  final CollectionReference todos =
      FirebaseFirestore.instance.collection('todos');

  addToDo(String todo) {
    todos.add({
      'title': todo,
      // 'description': description,
      'time': Timestamp.now(),
    });
    print('Hello from');
  }
}
