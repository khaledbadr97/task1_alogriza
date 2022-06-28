import 'package:flutter/material.dart';
import 'package:task1_algoriza/on_boarding_screen.dart';

void main()
{
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Task 1 Algoriza',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
      );
  }
}

