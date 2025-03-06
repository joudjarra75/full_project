import 'package:final_project/UI/componemt/cardTask.dart';
import 'package:final_project/UI/componemt/showDialog.dart';
import 'package:final_project/UI/designs/colors.dart';
import 'package:flutter/material.dart';

class Todoapp extends StatefulWidget {
  const Todoapp({super.key});

  @override
  State<Todoapp> createState() => _TodoappState();
}

class _TodoappState extends State<Todoapp> {
  TextEditingController addTaskController = TextEditingController();
  List<Task> allTask = [];

  onChangeStuats(int index) {
    setState(() {
      allTask[index].isDo = !allTask[index].isDo;
    });
  }

  deleteItem(int index){
    setState(() {
      allTask.remove(allTask[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    int lenOfTasks = allTask.length;

    return Scaffold(
      backgroundColor: bgScaffold,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text("To Do App", style: TextStyle(color: txtColor)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "${completedTasks()}/$lenOfTasks",
              style: TextStyle(
                color: txtColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      //ListView
      //check
      body: SingleChildScrollView(
        child:
            allTask.length == 0
                ? Center(
                  child: Text(
                    "Start add tasks",
                    style: TextStyle(
                      color: txtColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
                : Column(
                  children: [
                    ...allTask
                        .map(
                          (item) => Cardtask(
                            taskTitle: item.task,
                            isCheck: item.isDo,
                            changeFun: onChangeStuats,
                            index: allTask.indexOf(item),
                            delete: deleteItem,
                          ),
                        )
                        .toList(),
                  ],
                ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return ShowdialogClass(
                addTaskController: addTaskController,
                fun: fun,
              );
            },
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }

  fun() {
    setState(() {
      allTask.add(Task(task: addTaskController.text, isDo: false));
    });
  }

  int completedTasks() {
    int done = 0;
    for (var i in allTask) {
      if (i.isDo) {
        done++;
      }
    }
    return done;
  }
}

class Task {
  String task;
  bool isDo;

  Task({required this.task, required this.isDo});
}
