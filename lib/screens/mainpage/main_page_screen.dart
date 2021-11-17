import 'package:flutter/material.dart';
import 'todo.dart';
import 'package:intl/intl.dart';
class MainPage extends StatefulWidget
{
  @override
  _MainPageState  createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{

   final List<Todo> Todolist = [];
   final TextEditingController title = TextEditingController();
   void AddtoList()
   {Todolist.add(Todo(title: title.value.text, date:DateTime.now()));
     setState(() {
     });
   }

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
                  children:  <Widget>[
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        labelText: "Textlabel",
                        hintText: "TEXT",
                      ),
                    ),
                    IconButton(onPressed: AddtoList, icon: const Icon(Icons.add))
                  ],
              ),
            ),
            Column(children:( Todolist.map((tx){
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3, color: Colors.blue,),
                ),
                  child:Column(
                   children: <Widget>[
                     Card(child:Text(tx.title,style:const TextStyle(
                       fontSize: 25,
                     ))),
                     Card(child:Text('godzina: ${tx.date.hour}' ,style:const TextStyle(
                       fontSize: 10,
                       color: Colors.grey,
                     ))),
                   ],
                 ));
               }
              ).toList())
            )
          ],
        ),
      ),
    );
  }
}
