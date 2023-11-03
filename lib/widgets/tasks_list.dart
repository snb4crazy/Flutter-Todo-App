import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'task #1'),
    Task(name: 'task #2'),
    Task(name: 'task #3'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(isChecked: tasks[0].isDone, title: tasks[0].name),
        TaskTile(isChecked: tasks[1].isDone, title: tasks[1].name),
        TaskTile(isChecked: tasks[2].isDone, title: tasks[2].name),
      ],
    );
  }
}
