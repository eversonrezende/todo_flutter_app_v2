import 'package:flutter/material.dart';
import 'package:todo_flutter_app_v2/components/task.dart';
import 'package:todo_flutter_app_v2/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter', 'assets/images/dash.png', 5),
          Task('Andar de Bike', 'assets/images/bike.webp', 4),
          Task('Meditar', 'assets/images/meditar.jpeg', 4),
          Task('Ler', 'assets/images/livro.jpg', 3),
          Task('Jogar', 'assets/images/jogar.jpg', 2),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
