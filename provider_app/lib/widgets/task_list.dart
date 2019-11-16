import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider_app/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy car')
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
    children: <Widget>[
      TaskTile(
        taskTitle: tasks[0].name,
        isChecked: tasks[0].isDone,
      ),
      TaskTile(
        taskTitle: tasks[1].name,
        isChecked: tasks[1].isDone,
      ),
      TaskTile(
        taskTitle: tasks[2].name,
        isChecked: tasks[2].isDone,
      )
    ],
    );
  }
}