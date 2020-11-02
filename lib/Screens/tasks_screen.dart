import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooapp/Provider/datamodel.dart';
import 'package:todooapp/Screens/add_task.dart';
import 'package:todooapp/Widget/tasks_list.dart';
class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (context)=> AddTask(),
          );
        },
        child: Icon(Icons.add,size: 30,color: Colors.white),
        backgroundColor: Color(0xff609696),
      ),
      backgroundColor: Color(0xff609696),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,size: 30,color: Color(0xff609696)),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  ),
                SizedBox(height:10),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                 '${Provider.of<TaskData>(context).getcount()} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}