import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

int i = 0;

class questions_page extends StatefulWidget {
  const questions_page({super.key});

  @override
  State<questions_page> createState() => _questions_pageState();
}

class _questions_pageState extends State<questions_page> {
  void updateI() {
    i++;
    setState(() {});
  }

  List<int> number = [0, 1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Text(
              data[i].question,
              style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(
                  color: Color.fromARGB(130, 255, 255, 255),
                  fontSize: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          answerButton(data[i].answer[0], updateI),
          const SizedBox(
            height: 20,
          ),
          answerButton(data[i].answer[1], updateI),
          const SizedBox(
            height: 20,
          ),
          answerButton(data[i].answer[2], updateI),
          const SizedBox(
            height: 20,
          ),
          answerButton(data[i].answer[3], updateI),
        ],
      ),
    );
  }
}