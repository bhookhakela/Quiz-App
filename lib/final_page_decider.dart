import 'package:flutter/material.dart';
import 'package:quiz_app/QuestionPage.dart';
import 'package:quiz_app/Result_Screen.dart';
import 'package:quiz_app/data/questions.dart';

class FinalPageDecide extends StatefulWidget {
  const FinalPageDecide({super.key});

  @override
  State<FinalPageDecide> createState() => _FinalPageDecideState();
}

class _FinalPageDecideState extends State<FinalPageDecide> {
  int i = 0;
  int QuestionOrResult = 0;
  void updateI() {
    if (i < (data.length - 1)) {
      i++;
    } else {
      QuestionOrResult = 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = QuestionNew(i, updateI);
    if (QuestionOrResult == 1) {
      currentScreen = Result();
    }
    return currentScreen;
  }
}
