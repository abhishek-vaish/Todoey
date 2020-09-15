import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String taskTile;
  final bool isChecked;
  final Function onChanged;

  ListTileWidget({this.isChecked, this.taskTile, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        isChecked: isChecked,
        onChanged: onChanged,
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
