import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({
    Key? key, required this.label}) : 
    assert(["Fácil","Médio","Difícil","Perito"].contains(label)) , 
  super(key: key);


final config = {
"Fácil": {
  "colors": AppColors.levelButtonFacil,
  "borderColor": AppColors.levelButtonBorderFacil,
  "fontColor": AppColors.levelButtonTextFacil,
},
"Médio": {
  "colors": AppColors.levelButtonMedio,
  "borderColor": AppColors.levelButtonBorderMedio,
  "fontColor": AppColors.levelButtonTextMedio,
},
"Difícil": {
  "colors": AppColors.levelButtonDificil,
  "borderColor": AppColors.levelButtonBorderDificil,
  "fontColor": AppColors.levelButtonTextDificil,
},
"Perito": {
  "colors": AppColors.levelButtonPerito,
  "borderColor": AppColors.levelButtonBorderPerito,
  "fontColor": AppColors.levelButtonTextPerito,
},
};

Color get colors => config[label]! ['colors']!;
Color get borderColor => config[label]! ['borderColor']!;
Color get fontColor => config[label]! ['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors,
        border: Border.fromBorderSide(BorderSide(
          color: borderColor,
          )),
        borderRadius: BorderRadius.circular(28),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6,),
        child: Text(
          label,
           style: GoogleFonts.notoSans(
          color: fontColor,
          fontSize: 13 ,
        ),),
      ),
    );
    
  }
}