import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_app/data/globals.dart';
// import 'package:quiz_app/data/questions.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget(this.summary, {super.key});
  final Map<String, String> summary;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 30, 20),
      child: Center(
        child: Row(
          children: [
            FloatingActionButton.small(
              onPressed: () {},
              backgroundColor: Colors.amber,
              child: Text(
                summary["number"] as String,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: [
                  // Text(
                  //   summary["number"] as String,
                  //   textAlign: TextAlign.center,
                  // ),

                  Text(
                    summary["question"] as String,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    summary["choice"] as String,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    summary["correct"] as String,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
