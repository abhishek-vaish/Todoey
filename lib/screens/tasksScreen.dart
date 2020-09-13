import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/constrants.dart';
import 'package:todoey_flutter/widgets/listViewWidget.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: bottomSheetBar,
          backgroundColor: Color(0xFF757575),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: kSecondaryColor,
                  child: Icon(
                    Icons.list,
                    color: kPrimaryColor,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 20.0,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: kContainerDecoration,
              child: ListView(
                children: <Widget>[
                  ListViewWidget(),
                  ListViewWidget(),
                  ListViewWidget(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
