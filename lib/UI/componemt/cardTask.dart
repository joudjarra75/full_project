import 'package:final_project/cache/shared_pref.dart';
import 'package:flutter/material.dart';
import '../designs/colors.dart';
// import 'package:final_project/toDoApp.dart';

class Cardtask extends StatefulWidget {
  String taskTitle;
  bool isCheck ;
  Function changeFun;
int index;
Function delete;
  Cardtask({required this.taskTitle , required this.isCheck , required this.changeFun,required this.index,required this.delete});

  @override
  State<Cardtask> createState() => _CardtaskState();
}

class _CardtaskState extends State<Cardtask> {

  @override

  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        child: Card(
          color: taskCard,
          // surfaceTintColor:taskCard ,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.taskTitle,
                  style: TextStyle(
                    decoration: widget.isCheck ? TextDecoration.lineThrough : null,
                      decorationThickness: 4,
                      color: txtColor
                  ),),
                 Row(

                   children: [
                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: InkWell(child: widget.isCheck? Icon(Icons.check_box): Icon(Icons.check_box_outline_blank),
                       onTap: (){
                         widget.changeFun(widget.index);
                       },),
                     ),
                     IconButton(onPressed: (){
                       widget.delete(widget.index);
                     }
                       ,icon: Icon(Icons.delete),)

                   ],
                 ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
