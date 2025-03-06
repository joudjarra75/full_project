import 'package:final_project/UI/designs/colors.dart';
import 'package:flutter/material.dart';

import '../../toDoApp.dart';

class ShowdialogClass extends StatefulWidget {
  TextEditingController addTaskController ;
   Function fun;
  ShowdialogClass({required this.addTaskController,required this.fun});

  @override
  State<ShowdialogClass> createState() => _ShowdialogClassState();
}

class _ShowdialogClassState extends State<ShowdialogClass> {
  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: Text("Add task"),
      content: TextField(
        controller: widget.addTaskController,
      ),
      actions: [
        TextButton(onPressed: () {
         setState(() {
           widget.fun();
         });
            // widget.allTask.add(taskClass(task: widget.addTaskController.text, isDo: false));

          Navigator.pop(context);
        }, child: Text("Add")),
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Cancle")),

      ],


    );
  }
}

