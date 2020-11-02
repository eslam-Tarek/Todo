import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooapp/Provider/datamodel.dart';
import 'package:todooapp/Widget/task_title.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:Provider.of<TaskData>(context).tasks.length,
      itemBuilder: (context,index){
        final task = Provider.of<TaskData>(context).tasks[index];
        return TaskTitle(
          longpressCallback:(){
            Provider.of<TaskData>(context,listen: false).deletTask(task);
          },
          title: task.title,
          isChecked: task.isDone,
          checkboCallback : (checkboxstate){
            Provider.of<TaskData>(context,listen: false).updateTask(task);
          }
        );
      }, 
    );
  }
}
