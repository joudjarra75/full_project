import 'package:final_project/UI/designs/colors.dart';
import 'package:final_project/UI/designs/style.dart';
import 'package:flutter/material.dart';

class Introscreen2 extends StatefulWidget {
  const Introscreen2({super.key});

  @override
  State<Introscreen2> createState() => _Introscreen2State();
}

class _Introscreen2State extends State<Introscreen2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgScaffold,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //img
          Image.asset('assets/img/screen1.png'),

          //headline txt
          Text("Welcome to flutter",
            style:headLineTxt.copyWith(
              backgroundColor: Colors.black12
            ),),
          //body txt
          SizedBox(height: 20,),
          Text("welcome to to do app app hi hello\nhi hi hi welcome to flutter\nhghhgjghggjh",
            style: bodyTxt,)

        ],
      ),
    );
  }
}
