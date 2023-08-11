import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/globals.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/result_widgets.dart';
// import 'package:quiz_app/result_widgets.dart';

class Result extends StatelessWidget {
  const Result({super.key});
  List<Map<String, String>> getsummary() {
    List<Map<String, String>> temp = [];
    for (var i = 1; i < data.length; i++) {
      temp.add({
        "number": '$i',
        "question": data[i - 1].question,
        "choice": selected_ans[i - 1],
        "correct": data[i - 1].answer[0],
      });
    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 30, 50),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.kanit(
                  textStyle: const TextStyle(
                    color: Color.fromARGB(255, 162, 102, 235),
                    fontSize: 17,
                  ),
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: "You got",
                  ),
                  TextSpan(
                    text: " $score ",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Color.fromARGB(255, 193, 140, 236),
                    ),
                  ),
                  const TextSpan(
                    text: "answers correct out of 6 questions",
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ...getsummary().map((dummy) => ResultWidget(dummy)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
