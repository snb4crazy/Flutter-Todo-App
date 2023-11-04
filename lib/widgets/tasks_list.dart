import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                title: taskData.tasks[index].name,
                checkboxCallback: (bool? checkboxState) {
                  //setState(() {
                  //widget.tasks[index].toggleDone();
                  //});
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
