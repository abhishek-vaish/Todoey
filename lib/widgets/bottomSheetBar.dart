import 'package:flutter/material.dart';
import 'package:todoey_flutter/constrants.dart';

Widget bottomSheetBar(BuildContext context) {
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
          onChanged: (value) {},
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
          onPressed: () {},
        ),
      ],
    ),
  );
}
