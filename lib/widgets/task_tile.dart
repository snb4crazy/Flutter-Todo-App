import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task'),
      trailing: TaskCheckBox(isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;

  TaskCheckBox(this.checkBoxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      onChanged: (newValue) {},
    );
  }
}
