import 'package:flutter/material.dart';
import 'package:todo_flutter_app_v2/data/task_inherited.dart';
import 'package:todo_flutter_app_v2/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TaskInherited(
        child: const InitialScreen(),
      ),
    );
  }
}
