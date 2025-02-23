import 'package:final_project/UI/componemt/cardTask.dart';
import 'package:final_project/UI/designs/colors.dart';
import 'package:flutter/material.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: bgScaffold,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("To Do App",
        style: TextStyle(color: txtColor,),
        ),
      ),
//ListView
//check
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            // ...[  Text("data"),
            //   Text("data"),
            //   Text("data"),]
        
            ...allTask.map((item) => Cardtask(taskTitle:item.task)).toList()
            //[Widget(flutter,false),Widget(dart,false),Widget(gym,false)]
          // [Widget'fluuter a','dart','gym','take']
            // Cardtask(taskTitle: allTask[0].task,),
            // Cardtask(taskTitle: allTask[1].task,),
            // Cardtask(taskTitle: allTask[2].task,),
            // Cardtask(taskTitle: allTask[3].task,),
            // Cardtask(),
            // Cardtask(),
            // FractionallySizedBox(
            //   widthFactor: 0.8,
            //   child: Container(
            //     // width: 200,
            //     color: taskCard,
            //     child: Row(
            //       children: [
            //         Text("Flutter assignment",
            //         style: TextStyle(
            //           color: txtColor
            //         ),),
            //         Icon(Icons.check_box_outline_blank)
            //       ],
            //     ),
            //   ),
            // ),
        
          ],
        ),
      ),

    );
  }
}

class Task{
  String task;
  bool isDo;
  Task({required this.task,this.isDo = false});
}
List <Task> allTask =[
  Task(task: "flutter assignment"),
  Task(task: "dart assignment"),
  Task(task: "gym"),
  Task(task: "take a break"),
  Task(task: "take a break"),
  Task(task: "take a break"),
];
