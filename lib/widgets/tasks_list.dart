import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            title: Provider.of<TaskData>(context).tasks[index].name,
            checkboxCallback: (bool? checkboxState) {
              setState(() {
                //widget.tasks[index].toggleDone();
              });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
