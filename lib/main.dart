import 'package:flutter/material.dart';
import 'package:teste1/data/task_inherited.dart';
import 'package:teste1/screens/form_screen.dart';
import 'package:teste1/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: TaskInherited(child: const InicialScreen()),
    );
  }
}







