import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/globals.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
