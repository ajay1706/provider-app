import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),

        child: Column(
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
            ),)
          ],
        ),
      ),
    );
  }
}
