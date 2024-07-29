import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todos.dart';

class listTile extends StatefulWidget {
  listTile({
    super.key,
  });

  @override
  State<listTile> createState() => _listTileState();
}

class _listTileState extends State<listTile> {
  final _todoitems = todos.todoitems;
  void deleteTask(int ids) {
    setState(() {
      _todoitems.removeWhere((item) => item.id == ids);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _todoitems.length,
        itemBuilder: (BuildContext context, index) => ListTile(
            contentPadding: EdgeInsets.only(bottom: 20),
            //
            title: Text(_todoitems[index].taskName),
            //
            titleTextStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                decoration: _todoitems[index].isCompleted
                    ? TextDecoration.lineThrough
                    : null,
                color: Tcolors.white),
            //
            leading: Checkbox(
              onChanged: (bool? onTap) {
                setState(() {
                  _todoitems[index].isCompleted = onTap!;
                });
              },
              value: _todoitems[index].isCompleted,
            ),
            trailing: IconButton(
              onPressed: () {
                deleteTask(_todoitems[index].id);
              },
              icon: Icon(Icons.delete),
              color: Colors.red,
            )));

    /*  */
  }
}
