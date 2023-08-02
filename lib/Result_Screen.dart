import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/globals.dart';

class Result extends StatelessWidget {
  const Result(this.score, {super.key});
  final int score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
      child: Column(
        children: [
          Text(
            "You got $score answers correct out of 6 questions",
            style: GoogleFonts.kanit(
              textStyle: const TextStyle(
                color: Color.fromARGB(81, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
