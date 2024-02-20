import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ToDoList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   ToDoList({super.key , required this.taskName,required this.taskCompleted,this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:22.0, left: 22.0 , right: 22.0),
      child: Container(
        padding: const EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged),
              
             Text(
              taskName,
              style:  TextStyle(
                decoration: taskCompleted ?  TextDecoration.lineThrough : TextDecoration.none
              ),),
          ],
        ),
      ),
    );
  }
}
