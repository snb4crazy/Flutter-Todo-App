import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'task #1'),
    Task(name: 'task #2'),
    Task(name: 'task #3'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
