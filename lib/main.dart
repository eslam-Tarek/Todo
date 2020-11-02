import 'package:flutter/material.dart';
import 'package:todooapp/Screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'Provider/datamodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ToDo',
        home: TasksScreen(),
      ),
    );
  }
}

