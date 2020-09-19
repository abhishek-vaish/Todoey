import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: "Flutter meet"),
    Task(name: "Flutter UI meet"),
    Task(name: "Flutter UX meet"),
  ];

  UnmodifiableListView listView() {
    return UnmodifiableListView(_taskList);
  }

  int get listCount {
    return _taskList.length;
  }

  void addData(String newValue) {
    final Task task = Task(name: newValue);
    _taskList.add(task);
    notifyListeners();
  }

  void changeCheckedBox(Task task) {
    task.revertIsChecked();
    notifyListeners();
  }
}
