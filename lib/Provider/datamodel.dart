import 'package:flutter/cupertino.dart';
import 'package:todooapp/models/tasks.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(title: 'Buy the Milk'),
    Task(title: 'Go to my grandmother'),
  ];
  int getcount(){
    return tasks.length;
  }
  void additem(String newtask){
    tasks.add(Task(title: newtask));
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

   void deletTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}