import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/appBar/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              LevelButtonWidget(
            label: "Fácil",
            ),
            LevelButtonWidget(
            label: "Médio",
            ),
            LevelButtonWidget(
            label: "Difícil",
            ),
            LevelButtonWidget(
            label: "Perito",
            ),
            ],),
            SizedBox(height: 16,),
            Expanded(
                child: 
                GridView.count(
                 crossAxisSpacing: 13,
                 mainAxisSpacing: 13,
                crossAxisCount: 2,
                children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
              ],

              ),
            )
            
          ],
        ),
      )
    );
   
  }
}