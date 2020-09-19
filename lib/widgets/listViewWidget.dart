import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/taskData.dart';
import 'package:todoey_flutter/widgets/listTileWidget.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTileWidget(
                taskTile: value.listView()[index].name,
                isChecked: value.listView()[index].isChecked,
                onChanged: (newValue) {
                  value.changeCheckedBox();
                });
          },
          itemCount: value.listCount,
        );
      },
    );
  }
}
