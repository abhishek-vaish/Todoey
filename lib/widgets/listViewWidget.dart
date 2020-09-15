import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class ListViewWidget extends StatefulWidget {
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  bool isChecked = false;
  List<Task> taskList = [
    Task(name: "Flutter meet"),
    Task(name: "Flutter UI meet"),
    Task(name: "Flutter UX meet"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskList[0].name,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        onChanged: (newValue) {
          setState(() {
            isChecked = newValue;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function onChanged;

  TaskCheckBox({this.onChanged, this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: onChanged,
    );
  }
}
