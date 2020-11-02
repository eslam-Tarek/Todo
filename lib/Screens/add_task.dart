import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooapp/Provider/datamodel.dart';
String newTaskTitle;
class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Color(0xf757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:20,bottom: 15),
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(color: Colors.grey),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
            SizedBox(height:7),
            FlatButton(
              onPressed:() {
                Provider.of<TaskData>(context,listen: false).additem(newTaskTitle);
                Navigator.pop(context);
              },
              color: Color(0xff609696),
              child: Padding(
                padding: const EdgeInsets.only(top:7,bottom: 7,left:20,right:20),
                child: Text(
                  'ADD',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}