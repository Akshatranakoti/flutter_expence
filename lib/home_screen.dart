import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 206, 122, 212),
        title: const Text(
          "Flutter Expence",
          style: TextStyle(),
        ),
      ),
      body: const Column(
        children: [
          Text("child "),
          Text("child "),
          Text("child "),
        ],
      ),
    );
  }
}
