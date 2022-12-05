import 'package:flutter/material.dart';

import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Container(), title: const Text("Tasks")),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: ListView(
          children: const [
            Task('Learning Flutter', 'assets/images/flutter.png', 3),
            Task('Ride Bike', 'assets/images/bike.webp', 1),
            Task('Learning English', 'assets/images/book.jpeg', 2),
            Task('Meditation', 'assets/images/meditation.jpeg', 5),
            SizedBox(height: 80),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { setState(() {
          opacity =! opacity;
        });
          },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}

