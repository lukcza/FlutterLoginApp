import 'package:flutter/material.dart';
import 'todo.dart';
class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final List<Todo> Todolist =
  [Todo(id: "1", title: "Zananie domowe", amount: "1", date: "12-22-2021")
   ]
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TODO List"),
          actions: <Widget>[],
        ),
        body: ,
      ),
    );
  }
}
