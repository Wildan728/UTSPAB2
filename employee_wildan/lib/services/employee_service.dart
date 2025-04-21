import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';

class EmployeeService {
  final DatabaseReference _database = FirebaseDatabase.instance.ref().child(
    'employee_list',
  );
}

Stream<Map<String, String>> getEmployeeList() {
  return _database.onValue.map((event) {
    final Map<String, String> items = {};
    DataSnapshot snapshot = event.snapshot;
    if (snapshot.value != null) {
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, value) {
        items[key] = value['name'] as String;
      });
    }
  });
}
