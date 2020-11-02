import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  final bool isChecked;
  final String title;
  final Function checkboCallback;
  final Function longpressCallback;
  TaskTitle({this.title,this.isChecked, this.checkboCallback, this.longpressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longpressCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked  ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboCallback,
     ),
    );
  }
}