import 'package:final_project/UI/introScreen1.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:final_project/toDoApp.dart';

import 'introScreen2.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          PageView(
            onPageChanged: (index){
              setState(() {
                isLastPage = (index == 2);
              });
            },
            controller: _controller,
            children: [
             Introscreen1(),
             Introscreen2(),
              Container(color: Colors.red),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:[
              GestureDetector(child: Text("Skip"),
              onTap: (){
                _controller.jumpToPage(2);
              },),

              SmoothPageIndicator(controller: _controller, count: 3),
                isLastPage ?
                GestureDetector(child: Text("Donr")
                  ,onTap: (){
                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Todoapp()), (route) => false);
                  },)
                :
                GestureDetector(child: Text("Next")
                ,onTap: (){
                  _controller.nextPage(duration: (Duration(microseconds: 300)), curve:Curves.easeIn);
                  },)

              ],
            ),
          ),
        ],
      ),
    );
  }
}
