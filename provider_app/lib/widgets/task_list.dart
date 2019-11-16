import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider_app/model/task.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({Key key, this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
itemBuilder: (context, index){
  return TaskTile(
    taskTitle: widget.tasks[index].name,
    isChecked: widget.tasks[index].isDone,
    checkboxCallback:(checkBoxState){
      setState(() {
   widget.tasks[index].toggleDone();
      });
    }
  );
},
      itemCount: widget.tasks.length,

    );
  }
}