import 'package:flutter/material.dart';
import 'package:quiz_app/custom_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNew extends StatelessWidget {
  QuestionNew(this.i, this.updateI, {super.key});
  final int i;
  final void Function() updateI;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data[i].question,
            textAlign: TextAlign.center,
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
