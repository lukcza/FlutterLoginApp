import 'package:flutter/material.dart';
import 'todo.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
class MainPage extends StatefulWidget
{
  @override
  _MainPageState  createState() => _MainPageState();
}
class _MainPageState extends State<MainPage>{

   final List<Todo> Todolist = [];
   final TextEditingController title = TextEditingController();
   @override
  void initState() {
     super.initState();
     initializeDateFormatting();
   }
   void AddtoList()
   {Todolist.add(Todo(title: title.value.text, date:DateTime.now()));
     setState(() {
     });
   }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TODO List"),
        ),
        body: Column(
          children: <Widget>[
            Container(
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
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3, color: Colors.blue,),
                ),
                  child:Column(
                   children: <Widget>[
                     Text(tx.title,textAlign:TextAlign.left,style:const TextStyle(
                       fontSize: 25,
                     )),
                    Text('Godzina: '+ DateFormat.jm('Pl').format(tx.date),
                        textAlign: TextAlign.left,
                         style:const TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                     )),
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
