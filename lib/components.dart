import 'package:flutter/material.dart';
import 'package:task1_algoriza/on_boarding_model.dart';

Widget buildBoardingItem(BoardingModel model)
=> Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children:
  [
    Expanded(
      child: Image(
        image: AssetImage('${model.image}'),
      ),
    ),
    SizedBox(
      height: 30.0,
    ),
    Center(
      child: Text(
        '${model.title}',
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
    ),
    SizedBox(
      height: 15.0,
    ),
    Center(
      child: Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    ),
    SizedBox(
      height: 15.0,
    ),
  ],
);

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: (){
        function();
      },
      child: Text(text,style: TextStyle(color: Colors.black),),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (route)
  {
    return false;
  },
);