// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_app/Utils/device_utils.dart';
import 'package:todo_app/Widgets/appBar.dart';
import 'package:todo_app/Widgets/searchBar.dart';
import 'package:todo_app/Widgets/todoList.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/model/todos.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

final _addtaskTextForm = TextEditingController();

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _addtaskTextForm = TextEditingController();
    addTask(String tname) {
      setState(() {
        todos.todoitems.add(
            todos(id: DateTime.now().millisecondsSinceEpoch, taskName: tname));
        _addtaskTextForm.clear();
      });
    }

    //
    final todoItems = todos.todoitems;

    double sHeight = TDeviceUtils.getScreenHeight(context);
    return Scaffold(
      backgroundColor: Tcolors.primary.withOpacity(1),
      body: Container(
        height: sHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //AppBar
              appBar(),

              //Search bar
              //

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: searchBar(),
              ),
              SizedBox(height: sHeight * 0.6, child: listTile()),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: TDeviceUtils.getScteenWidth(context) * 0.8,
              height: TDeviceUtils.getBottomNavigationBarHeight(context),
              decoration: BoxDecoration(
                  color: Tcolors.LightGrey,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(2),
              child: TextField(
                controller: _addtaskTextForm,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Tcolors.darkerGrey),
                    hintText: "ADD NEW TASK",
                    prefixIcon: Icon(Icons.add_comment_rounded)),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                addTask(_addtaskTextForm.text);
              },
              child: Icon(Icons.add, color: Tcolors.primary),
            )
          ],
        ),
      ),
    );
  }
}
