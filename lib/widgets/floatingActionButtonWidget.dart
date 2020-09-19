import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/taskData.dart';

import '../constrants.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  @override
  _FloatingActionButtonWidgetState createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    String textFieldValue;
    return Container(
      padding: EdgeInsets.only(
        top: 30.0,
        right: 30.0,
        left: 30.0,
      ),
      decoration: kContainerDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 35.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: kPrimaryColor,
            style: TextStyle(
              color: Colors.black,
            ),
            onChanged: (value) {
              textFieldValue = value;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
            color: kPrimaryColor,
            child: Text(
              'Add',
              style: TextStyle(color: kSecondaryColor),
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addData(textFieldValue);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
