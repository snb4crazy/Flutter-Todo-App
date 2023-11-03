import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        ListTile(
          title: Text('Another hardcoded (!) task'),
          trailing: Checkbox(
            value: false,
            onChanged: (bool? value) {},
          ),
        )
      ],
    );
  }
}
