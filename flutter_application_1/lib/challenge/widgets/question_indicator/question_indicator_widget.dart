import 'package:flutter/material.dart';

class QuestioIndicatorWidget extends StatelessWidget {
  const QuestioIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        children: [
          Text("Questão 04"), Text("de 10"),
        ]
      )
    );
  }
}