import 'package:final_project/UI/designs/colors.dart';
import 'package:final_project/UI/designs/style.dart';
import 'package:flutter/material.dart';

class Introscreen1 extends StatefulWidget {
  const Introscreen1({super.key});

  @override
  State<Introscreen1> createState() => _Introscreen1State();
}

class _Introscreen1State extends State<Introscreen1> {
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
          Text("Welcome to Task App",
          style:headLineTxt ,),
          //body txt
          SizedBox(height: 20,),
          Text("welcome to to do app app hi hello\nhi hi hi welcome to flutter\nhghhgjghggjh",
          style: bodyTxt,)

        ],
      ),
    );
  }
}
