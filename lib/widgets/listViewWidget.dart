import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/widgets/listTileWidget.dart';

class ListViewWidget extends StatefulWidget {
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  bool isChecked = false;
  Task task = Task();
  List<Task> taskList = [
    Task(name: "Flutter meet"),
    Task(name: "Flutter UI meet"),
    Task(name: "Flutter UX meet"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTileWidget(
          taskTile: taskList[index].name,
          isChecked: taskList[index].isChecked,
          onChanged: (newValue) {
            setState(() {
              taskList[index].revertIsChecked();
            });
          },
        );
      },
      itemCount: taskList.length,
    );
  }
}
