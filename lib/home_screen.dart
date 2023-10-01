import 'package:flutter/material.dart';
import 'package:flutter_expence/expences_list.dart';
import 'package:flutter_expence/models/expence_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final List<Expence> registeredexpence = [
    Expence(
        amount: 12,
        date: DateTime.now(),
        title: 'college',
        category: Category.work),
    Expence(
        amount: 13,
        date: DateTime.now(),
        title: 'grocery',
        category: Category.food),
    Expence(
        amount: 15,
        date: DateTime.now(),
        title: 'party',
        category: Category.leisure)
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 206, 122, 212),
          title: const Text(
            "Flutter Expence",
            style: TextStyle(),
          ),
        ),
        body: ExpenceList(
          expences: registeredexpence,
        ));
  }
}
