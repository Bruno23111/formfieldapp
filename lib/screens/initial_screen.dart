import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste1/components/task.dart';


class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefinhas'),
        backgroundColor: Colors.blue,
      ),
      body: AnimatedOpacity(
        opacity: (opacidade) ? 1 : 0,
        duration: const Duration(
          milliseconds: 1000,
        ),
        child: ListView(
          children:  const[
            Task('Aprender Flutter',
                'assets/images/Dash.png', 3),
            Task(
                'Aprender Java',
                'assets/images/java.png',
                5),
            Task('Jogar Honkai Star Rail',
                'assets/images/honkai.png', 1),
            Task(
                'Ler Manga',
                'assets/images/solo.jpg',
                2),
            Task(
                'Ir Treinar',
                'assets/images/treinar.webp',
                3),
            Task('Dormir', 'assets/images/mimir.png',
                1),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}