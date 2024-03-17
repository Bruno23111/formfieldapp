import 'package:flutter/material.dart';
import 'package:teste1/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/Dash.png', 3),
    Task('Aprender Java', 'assets/images/java.png', 5),
    Task('Jogar Honkai Star Rail', 'assets/images/honkai.png', 1),
    Task('Ler Manga', 'assets/images/solo.jpg', 2),
    Task('Ir Treinar', 'assets/images/treinar.webp', 3),
    Task('Dormir', 'assets/images/mimir.png', 1),
  ];

  void NewTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
