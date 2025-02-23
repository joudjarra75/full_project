import 'package:flutter/material.dart';

import '../designs/colors.dart';

class Cardtask extends StatelessWidget {
  String taskTitle;
  Cardtask({required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 100,
        child: Card(
          color: taskCard,
          // surfaceTintColor:taskCard ,
          child:  Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(taskTitle,
                  style: TextStyle(
                      color: txtColor
                  ),),
                Icon(Icons.check_box_outline_blank)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
