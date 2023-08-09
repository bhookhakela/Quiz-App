import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_app/data/globals.dart';
// import 'package:quiz_app/data/questions.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(this.summary, {super.key});
  final Map<String, Object> summary;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          FloatingActionButton.small(
            onPressed: () {},
            backgroundColor: Colors.amber,
            child: const Icon(Icons.abc),
          ),
          Column(
            children: [
              // Text(summary["number"] as String),    casuing some error
              Text(summary["question"] as String),
              Text(summary["choice"] as String),
              Text(summary["correct"] as String),
            ],
          )
        ],
      ),
    );
  }
}
