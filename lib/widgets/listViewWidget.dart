import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Flutter meeting at 9 P.M.',
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
        ));
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
