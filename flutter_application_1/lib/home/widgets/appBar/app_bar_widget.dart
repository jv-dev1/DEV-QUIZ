import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() 
  : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        children: [
          Container(
            height: 161,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.maxFinite,
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Text.rich(TextSpan(
              text: "olá , ", 
              style: AppTextStyles.title,
              children: [
                TextSpan(
                  text: "João Vitor",
                 style: AppTextStyles.titleBold,
                )
              ]
              )),
             Container(
               width: 58, 
               height: 58,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 image: DecorationImage(image: NetworkImage(
                   "https://avatars.githubusercontent.com/u/80177229?s=400&u=39855a7d8eaf7337ebef8541d4b7e0a5f609506b&v=4")
                   )
               )
             )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),child: ScoreCardWidget()),
        ],
      ),
    ) 
  );
  
  }
