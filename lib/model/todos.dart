import 'package:flutter/material.dart';

class todos {
  todos({required this.id, required this.taskName, this.isCompleted = false});

  int? id;
  String taskName;
  bool isCompleted;
  static List<dynamic> todoitems = [
    todos(
      id: 1,
      taskName: "Learn",
    ),
    todos(
      id: 2,
      taskName: "play ",
    ),
    todos(
      id: 3,
      taskName: "work ",
    ),
    todos(
      id: 4,
      taskName: "sleep ",
    ),
  ];
}
