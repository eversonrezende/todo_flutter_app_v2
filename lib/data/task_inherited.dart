import 'package:flutter/material.dart';
import 'package:todo_flutter_app_v2/components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender Flutter', 'assets/images/dash.png', 5),
    Task('Andar de Bike', 'assets/images/bike.webp', 4),
    Task('Meditar', 'assets/images/meditar.jpeg', 4),
    Task('Ler', 'assets/images/livro.jpg', 3),
    Task('Jogar', 'assets/images/jogar.jpg', 2),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
