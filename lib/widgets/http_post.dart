import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/todo.dart';

class HttpPost extends StatefulWidget {
  final dynamic setSt;
  HttpPost({Key? key, this.setSt}) : super(key: key);

  @override
  State<HttpPost> createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPost> {
  List<bool> listbool = [];
  List<Todo> listTodo = [];
  Future<void> getfetch() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        List<dynamic> list = json.decode(response.body);
        for (var all in list) {
          listTodo.add(Todo.fromJson(all));
        }
        listbool = List.filled(listTodo.length, false);
      }
    } catch (e) {
      print("Error: ${e}");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    getfetch();
  }

  setS() {
    listTodo;
    listbool;
  }

  @override
  Widget build(BuildContext context) {
    return listTodo.isEmpty
        ? Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Click '),
                    Text(
                      "Sync ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text("on top")
                  ],
                )
              ],
            ),
          )
        : ExpansionPanelList(
            expansionCallback: (index, isExpanded) {
              setState(() {
                listbool[index] = !listbool[index];
              });
            },
            animationDuration: Duration(milliseconds: 700),
            children: [
              for (int i = 0; i < listTodo.length - 90; i++)
                ExpansionPanel(
                    isExpanded: listbool[i],
                    headerBuilder: (context, isOpen) {
                      return Text(listTodo[i].title.toString());
                    },
                    body: Text(listTodo[i].body.toString()))
            ],
          );
  }
}
