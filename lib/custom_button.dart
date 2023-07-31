import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class answerButton extends StatelessWidget {
  answerButton(this.options, this.buttonpress, {super.key});
  void Function() buttonpress;
  final String options;
  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: buttonpress,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: const Color.fromARGB(54, 255, 255, 255),
          ),
          child: Center(
            child: Text(
              options,
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(
                  color: Color.fromARGB(181, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
