import 'package:final_project/cache/shared_pref.dart';
import 'package:flutter/material.dart';
import '../designs/colors.dart';
import 'package:final_project/toDoApp.dart';

class Cardtask extends StatefulWidget {
  String taskTitle;
  bool isCheck ;
  Cardtask({required this.taskTitle ,  this.isCheck = false });

  @override
  State<Cardtask> createState() => _CardtaskState();
}

class _CardtaskState extends State<Cardtask> {

  // void _loadData() async{
  //   bool saveData = await CacheData.getData(key: "userStatus") ??  false ;
  //   setState(() {
  //     widget.isCheck =  saveData;
  //   });
  // }

  // void _saveData(dynamic data) async{
  //   // SharedPreferences prefs = await SharedPreferences.getInstance();
  //   // await prefs.setBool('userStatus', data);
  //    CacheData.setData(key: "userStatus", value:data);
  //
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   _loadData();
  // }
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
                Text(widget.taskTitle,
                  style: TextStyle(
                      color: txtColor
                  ),),
                 InkWell(child: widget.isCheck? Icon(Icons.check_box): Icon(Icons.check_box_outline_blank),
                 onTap: (){

                   // completedTasks();

                   setState(() {
                     // completedTasks();
                     widget.isCheck = !widget.isCheck;

                     // _saveData(widget.isCheck);

                   });
                 },)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
