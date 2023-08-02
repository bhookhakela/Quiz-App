import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/globals.dart';

class ResultWidget extends StatelessWidget {
  const ResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          FloatingActionButton.small(
            child: Icon(Icons.abc),
            onPressed: () {},
            backgroundColor: Colors.amber,
          )
        ],
      ),
    );
  }
}
