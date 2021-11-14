import 'package:flutter/material.dart';
import 'todo.dart';
class MainPage extends StatelessWidget {
   MainPage({Key? key}) : super(key: key);
  final List<Todo> Todolist =
    [
    Todo(id: "1", title: "Zananie domowe", amount: "1", date: DateTime.now()),
    Todo(id: "2", title: "Zadanie szkolne", amount: "1", date: DateTime.now()),
   ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TODO List"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Column(
                  children: const <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "TEXT",
                      ),
                    ),
                  ],
              ),
            ),
            Column(children:( Todolist.map((tx){
              return Card(child:Text(tx.title,));
              }).toList())
            )
          ],
        ),
      ),
    );
  }
}
