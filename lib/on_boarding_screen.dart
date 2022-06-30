import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1_algoriza/components.dart';
import 'package:task1_algoriza/login_screen.dart';
import 'package:task1_algoriza/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget
{

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
{
  var boardController = PageController();

  bool isLast = false;

  void submit()
  {
    navigateAndFinish(context, LoginScreen(),);
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions:
        [
          defaultTextButton(
            function: submit,
            text: 'Skip',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              [
                Text(
                  '7',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Krave',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                physics: BouncingScrollPhysics(),
                controller: boardController,
                onPageChanged: (int index)
                {
                  if(index == boarding.length - 1)
                  {
                    setState(()
                    {
                      isLast = true;
                    });
                  }
                  else
                  {
                    setState(()
                    {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) => buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SmoothPageIndicator(
              controller: boardController,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: Colors.orange,
                dotHeight: 7,
                expansionFactor: 5,
                dotWidth: 5,
                spacing: 5.0,
              ),
              count: boarding.length,
            ),

            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: ()
              {
                if(isLast)
                {
                  submit();
                }
                else
                {
                  boardController.nextPage(
                    duration: Duration(
                      milliseconds: 750,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
                }
              },
              child: Text(
                'Get Started'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
