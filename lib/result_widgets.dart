import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/globals.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "You got $score answers correct out of 6 questions",
          textAlign: TextAlign.center,
          style: GoogleFonts.kanit(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(177, 122, 57, 233),
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
