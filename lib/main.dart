import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Container')),
          backgroundColor: Colors.grey,
          toolbarHeight: 80.0,
        ),
        body: const Center(
          child: MyCustomWidget(),
        ),
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  const MyCustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildHorseContainer(Colors.indigo),
        _buildHorseContainer(Colors.indigoAccent),
        _buildHorseContainer(Colors.lightBlue),
        _buildHorseContainer(Colors.lightBlueAccent),
        _buildHorseContainer(Colors.cyanAccent),
      ],
    );
  }

  Widget _buildHorseContainer(Color color) {
    return Container(
      width: 300.0,
      height: 80.0,
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        color: color, // Цвет коня
        borderRadius: BorderRadius.circular(20.0),
      ),

    );
  }
}

