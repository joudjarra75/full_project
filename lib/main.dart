import 'package:final_project/cache/shared_pref.dart';
import 'package:final_project/toDoApp.dart';
import 'package:flutter/material.dart';

import 'UI/on_boarding.dart';
import 'UI/splashScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await CacheData.cacheInit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home:OnBoardingScreen()
    );
  }
}