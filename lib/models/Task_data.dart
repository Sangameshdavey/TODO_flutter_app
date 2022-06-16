import 'package:flutter/foundation.dart';
import 'package:todo_app/models/task.dart';
import 'dart:collection';

class Task_data extends ChangeNotifier {
  List<Task> _tasks = [Task(name: "Buy bread"), Task(name: "Buy milk")];

  int get taskCount {
    return _tasks.length;
  }

  addTask(String newtextTitle) {
    final task = Task(name: newtextTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletetask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  String getTaskName(int index) {
    return _tasks[index].name;
  }

  bool isTaskChecked(int index) {
    return _tasks[index].isDone;
  }
}
