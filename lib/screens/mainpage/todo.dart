import 'package:flutter/foundation.dart';

class Todo
{
  late final String id;
  late final String title;
  late final String amount;
  late final DateTime date;

  Todo({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });
}