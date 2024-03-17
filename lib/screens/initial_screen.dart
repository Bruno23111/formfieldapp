import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste1/components/task.dart';
import 'package:teste1/data/task_inherited.dart';
import 'package:teste1/screens/form_screen.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefinhas'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 8, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (contextNew) => FormScreen(taskContext: context),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
