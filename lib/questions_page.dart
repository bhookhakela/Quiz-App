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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data[i].question,
            style: GoogleFonts.robotoMono(
              textStyle: const TextStyle(
                color: Color.fromARGB(130, 255, 255, 255),
                fontSize: 30,
              ),
            ),
          ),
          ...(data[i].shuffle_options()).map((things) {
            return answerButton(things, updateI);
          }),
        ],
      ),
    );
  }
}
