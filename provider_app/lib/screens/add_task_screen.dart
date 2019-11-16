import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
final Function addTaskCallback;



   AddTaskScreen(this.addTaskCallback);
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
              topLeft: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         
          children: <Widget>[
            Text('Add Task',
            style: TextStyle(
              fontSize: 30,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.w700
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 20,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20,),
            FlatButton(
                onPressed: (){
addTaskCallback(newTaskTitle);

      },
                child: Text("Add",
                style: TextStyle(
                  color: Colors.white
                ),),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      )
    );
  }
}
