import 'package:final_project/UI/designs/colors.dart';
import 'package:final_project/UI/on_boarding.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:final_project/toDoApp.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}


class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
        ()=>Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()), (route) => false)
    );

  }

  @override
  Widget build(BuildContext context) {
    return Container(
     color: appBarColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_month_sharp,
              size: 150,
            color: txtColor,),
            SizedBox(height: 30,),
            CircularProgressIndicator(
              color: txtColor,
            )
          ],
        ),
      ),
    );
  }
}
