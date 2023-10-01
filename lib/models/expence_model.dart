import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expence {
  String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expence(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid.v4();
}
