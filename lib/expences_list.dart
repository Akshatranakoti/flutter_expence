import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/expence_model.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key, required this.expences});
  final List<Expence> expences;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expences.length,
        itemBuilder: (context, index) => Card(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    children: [
                      Text(
                        expences[index].title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(expences[index].amount.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Text(expences[index].category.toString()),
                      Text(expences[index].amount.toString()),
                    ],
                  )
                ],
              ),
              color: Colors.purple[50],
            ));
  }
}
