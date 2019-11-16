import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallBack(bool checkBoxState){
    setState(() {

      isChecked = checkBoxState;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a Task',
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: new TaskCheckBox( checkboxState: isChecked,
          toggleCheckBoxState: checkboxCallBack,)
    );
  }
}

class TaskCheckBox extends StatelessWidget {

final bool checkboxState;
final Function toggleCheckBoxState;

   TaskCheckBox({ this.checkboxState,this.toggleCheckBoxState });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged:toggleCheckBoxState
    );
  }
}