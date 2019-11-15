import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 30,
                    color: Colors.lightBlueAccent,)),
                SizedBox(
                  height: 10,
                ),
                Text('hurly-burly',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),),
                Text('12 Tasks',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20
              ),

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child:ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('This is a Task'),
                    trailing: Checkbox(value: false,),
                  ) ,
                  ListTile(
                    title: Text('This is a Task'),
                    trailing: Checkbox(value: false,),
                  )
                ],
              ) ,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          child: Icon(Icons.add),
          onPressed: (){}),
    );
  }
}
