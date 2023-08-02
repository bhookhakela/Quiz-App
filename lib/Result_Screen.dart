import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/result_widgets.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(40, 50, 40, 50),
        child: SingleChildScrollView(
          child: ResultWidget(),
        ),
      ),
    );
  }
}
